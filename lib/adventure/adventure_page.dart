import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_filter_widget/adventure_filter_widget.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_page_controller.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_stage_widget/adventure_stage_widget.dart';
import 'package:grand_chase_farm_guide/adventure/adventure_page_repository.dart';
import 'package:grand_chase_farm_guide/shared/enum/drop_types_enum.dart';
import 'package:grand_chase_farm_guide/shared/models/adventure_stage_model.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_drawer_widget/app_drawer_widget.dart';
import 'package:grand_chase_farm_guide/shared/widgets/custom_persistent_header_delegate/custom_persistent_header_delegate.dart';
import 'package:provider/provider.dart';

class AdventurePage extends StatelessWidget {
  const AdventurePage({Key? key}) : super(key: key);

  getWorldStagesList({
    required AdventureRepository repository,
    required int worldNumber,
    required AdventurePageController controller,
  }) {
    var world = repository.worlds
        .firstWhere((world) => world.worldNumber == worldNumber);

    var worldStages = <Widget>[];
    world.chapters.forEach((chapter) {
      List<AdventureStageModel> filteredStages = chapter.adventureStages;
      if (controller.bovFilterSelected) {
        filteredStages = filteredStages
            .where((stage) =>
                stage.drops.any((drop) => drop == DropTypes.blessingsOfValor))
            .toList();
      }
      if (controller.sCardFilterSelected != DropTypes.none) {
        filteredStages = filteredStages
            .where((stage) => stage.drops
                .any((drop) => drop == controller.sCardFilterSelected))
            .toList();
      }
      if (controller.evostoneFilterSelected != DropTypes.none) {
        filteredStages = filteredStages
            .where((stage) => stage.drops
                .any((drop) => drop == controller.evostoneFilterSelected))
            .toList();
      }

      filteredStages.forEach((stage) {
        worldStages.add(AdventureStageWidget(
          chapterNumber: chapter.chapterNumber,
          stage: stage,
        ));
      });
    });

    return worldStages;
  }

  @override
  Widget build(BuildContext context) {
    AdventureRepository repository = AdventureRepository();

    return Scaffold(
      appBar: AppBarWidget(title: "Aventura"),
      drawer: AppDrawerWidget(),
      body: ChangeNotifierProvider<AdventurePageController>(
        create: (_) => AdventurePageController(),
        builder: (providerContext, _) => CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              delegate: CustomPersistentHeaderDelegate(
                child: AdventureFilterWidget(),
                height: 110,
              ),
              floating: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, worldIndex) => Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Mundo ${repository.worlds[worldIndex].worldNumber}",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).textTheme.bodyText1!.color,
                      ),
                    ),
                    Divider(),
                    ...getWorldStagesList(
                      repository: repository,
                      worldNumber: repository.worlds[worldIndex].worldNumber,
                      controller:
                          Provider.of<AdventurePageController>(providerContext),
                    )
                  ],
                ),
                childCount: repository.worlds.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
