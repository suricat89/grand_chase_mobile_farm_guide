import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/core/app_shadows.dart';
import 'package:grand_chase_farm_guide/likability_details/likability_details_repository.dart';
import 'package:grand_chase_farm_guide/shared/models/likability_episode_model.dart';
import 'package:provider/provider.dart';

class LikabilityEpisodeWidget extends StatelessWidget {
  final String characterName;
  final int episodeNumber;
  const LikabilityEpisodeWidget({
    Key? key,
    required this.characterName,
    required this.episodeNumber,
  }) : super(key: key);

  LikabilityEpisodeModel getEpisode(LikabilityDetailsRepository repository) =>
      repository.getEpisode(characterName, episodeNumber);

  @override
  Widget build(BuildContext context) {
    return Consumer<LikabilityDetailsRepository>(
      builder: (providerContext, repository, _) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: getEpisode(repository).isEpisodeComplete
                ? Theme.of(context).cardColor.withOpacity(0.6)
                : Theme.of(context).cardColor,
            boxShadow: AppShadows.boxShadow04dp,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              right: 15,
              bottom: 30,
              left: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getEpisode(repository).episodeDescription,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Theme.of(context).textTheme.headline6!.color,
                  ),
                ),
                Column(
                  children: [
                    ...getEpisode(repository)
                        .likabilityQuests
                        .asMap()
                        .map(
                          (questIndex, e) => MapEntry(
                            questIndex,
                            Container(
                              child: Column(
                                children: [
                                  CheckboxListTile(
                                    value: e.ammountCompleted >= e.ammount,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    contentPadding: const EdgeInsets.all(0),
                                    onChanged: (newValue) {
                                      if (newValue!) {
                                        repository.setAmmountCompleted(
                                            characterName,
                                            episodeNumber,
                                            questIndex,
                                            e.ammount);
                                      } else {
                                        repository.setAmmountCompleted(
                                            characterName,
                                            episodeNumber,
                                            questIndex,
                                            0);
                                      }
                                    },
                                    title: Text(
                                      e.getQuestDescription(characterName),
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .color,
                                      ),
                                    ),
                                  ),
                                  Slider(
                                    min: 0,
                                    max: e.ammount.toDouble(),
                                    divisions: e.ammount,
                                    label: e.ammountCompleted.toString(),
                                    onChanged: (double value) {
                                      repository.setAmmountCompleted(
                                          characterName,
                                          episodeNumber,
                                          questIndex,
                                          value.truncate());
                                    },
                                    value: e.ammountCompleted.toDouble(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                        .values
                        .toList()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
