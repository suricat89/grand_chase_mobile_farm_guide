import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/core/app_shadows.dart';
import 'package:grand_chase_farm_guide/likability_details/likability_details_repository.dart';
import 'package:grand_chase_farm_guide/likability_details/widgets/likability_details_header_widget/likability_details_header_widget.dart';
import 'package:grand_chase_farm_guide/likability_details/widgets/likability_episode_widget/likability_episode_widget.dart';
import 'package:grand_chase_farm_guide/shared/models/likability_character_model.dart';
import 'package:grand_chase_farm_guide/shared/util/character_util.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:grand_chase_farm_guide/shared/widgets/custom_persistent_header_delegate/custom_persistent_header_delegate.dart';
import 'package:provider/provider.dart';

class LikabilityDetailsPage extends StatefulWidget {
  final String selectedCharacterName;
  LikabilityDetailsPage({
    Key? key,
    required this.selectedCharacterName,
  }) : super(key: key);

  @override
  _LikabilityDetailsPageState createState() => _LikabilityDetailsPageState();
}

class _LikabilityDetailsPageState extends State<LikabilityDetailsPage> {
  late List<LikabilityCharacterModel> likabilityCharacters;

  @override
  Widget build(BuildContext context) {
    late PageController pageController = PageController(
      initialPage: likabilityCharacters.indexWhere((character) =>
          character.characterName == widget.selectedCharacterName),
      keepPage: true,
    );

    goToPage(int index) {
      pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    }

    return Scaffold(
      appBar: AppBarWidget(
        title: "Afinidade",
        context: context,
      ),
      body: ChangeNotifierProvider<LikabilityDetailsRepository>(
          create: (_) => LikabilityDetailsRepository(),
          builder: (providerContext, child) {
            this.likabilityCharacters =
                Provider.of<LikabilityDetailsRepository>(providerContext,
                        listen: false)
                    .likabilityCharacters;

            return PageView.builder(
              itemCount: this.likabilityCharacters.length,
              controller: pageController,
              itemBuilder: (_, indexCharacter) => CustomScrollView(
                slivers: <Widget>[
                  SliverPersistentHeader(
                    delegate: CustomPersistentHeaderDelegate(
                        child: LikabilityDetailsHeaderWidget(
                          onBackButtonTap: () {
                            goToPage(
                                indexCharacter > 0 ? indexCharacter - 1 : 0);
                          },
                          onNextButtonTap: () {
                            goToPage(indexCharacter <
                                    this.likabilityCharacters.length - 1
                                ? indexCharacter + 1
                                : this.likabilityCharacters.length - 1);
                          },
                          characterPicture: CharacterUtil.getCharacterPicture(
                              this
                                  .likabilityCharacters[indexCharacter]
                                  .characterName),
                          characterName: this
                              .likabilityCharacters[indexCharacter]
                              .characterName,
                        ),
                        height: 75),
                    floating: true,
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, indexEpisode) => Column(
                        children: [
                          SizedBox(height: 10),
                          LikabilityEpisodeWidget(
                            characterName: this
                                .likabilityCharacters[indexCharacter]
                                .characterName,
                            episodeNumber: this
                                .likabilityCharacters[indexCharacter]
                                .likabilityEpisodes[indexEpisode]
                                .episodeNumber,
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                      childCount: this
                          .likabilityCharacters[indexCharacter]
                          .likabilityEpisodes
                          .length,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
