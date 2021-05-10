import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/likability_details/likability_details_repository.dart';
import 'package:grand_chase_farm_guide/likability_details/widgets/likability_episode_widget/likability_episode_widget.dart';
import 'package:grand_chase_farm_guide/shared/models/likability_character_model.dart';
import 'package:grand_chase_farm_guide/shared/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:provider/provider.dart';

class LikabilityDetailsPage extends StatefulWidget {
  LikabilityDetailsPage({Key? key}) : super(key: key);

  @override
  _LikabilityDetailsPageState createState() => _LikabilityDetailsPageState();
}

class _LikabilityDetailsPageState extends State<LikabilityDetailsPage> {
  @override
  Widget build(BuildContext context) {
    double _getEpisodesListHeight() =>
        MediaQuery.of(context).size.height - AppBarWidget.appBarHeight - 115;

    List<LikabilityCharacterModel> _getLikabilityCharacters(
            BuildContext providerContext) =>
        Provider.of<LikabilityDetailsRepository>(providerContext, listen: false)
            .likabilityCharacters;

    PageController pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    goToPage(int index) {
      print(index);
      pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
    }

    return Scaffold(
      appBar: AppBarWidget(title: "Afinidade"),
      body: ChangeNotifierProvider<LikabilityDetailsRepository>(
        create: (_) => LikabilityDetailsRepository(),
        builder: (providerContext, child) => PageView.builder(
          itemCount: _getLikabilityCharacters(providerContext).length,
          controller: pageController,
          itemBuilder: (_, indexCharacter) => Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.chevron_left),
                    onPressed: () =>
                        goToPage(indexCharacter > 0 ? indexCharacter - 1 : 0),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        _getLikabilityCharacters(
                                providerContext)[indexCharacter]
                            .characterName,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600, fontSize: 48),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () => goToPage(indexCharacter <
                            _getLikabilityCharacters(providerContext).length - 1
                        ? indexCharacter + 1
                        : _getLikabilityCharacters(providerContext).length - 1),
                  )
                ],
              ),
              Divider(height: 15),
              SizedBox(height: 20),
              Container(
                height: _getEpisodesListHeight(),
                child: ListView.separated(
                  itemCount:
                      _getLikabilityCharacters(providerContext)[indexCharacter]
                          .likabilityEpisodes
                          .length,
                  controller: ScrollController(keepScrollOffset: true),
                  physics:
                      ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (_, __) => SizedBox(height: 20),
                  itemBuilder: (_, indexEpisode) => LikabilityEpisodeWidget(
                    characterName: _getLikabilityCharacters(
                            providerContext)[indexCharacter]
                        .characterName,
                    episodeNumber: _getLikabilityCharacters(
                            providerContext)[indexCharacter]
                        .likabilityEpisodes[indexEpisode]
                        .episodeNumber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
