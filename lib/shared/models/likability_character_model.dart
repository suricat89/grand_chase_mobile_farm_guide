import 'package:grand_chase_farm_guide/shared/models/likability_episode_model.dart';

class LikabilityCharacterModel {
  String characterName;
  List<LikabilityEpisodeModel> likabilityEpisodes;

  LikabilityEpisodeModel getEpisode(int episodeNumber) => likabilityEpisodes
      .firstWhere((element) => element.episodeNumber == episodeNumber);

  resetEpisodes(int startFromEpisodeNumber) {
    int startIndex = likabilityEpisodes.indexWhere(
        (element) => element.episodeNumber == startFromEpisodeNumber);

    for (int i = startIndex; i < likabilityEpisodes.length; i++) {
      likabilityEpisodes.elementAt(i).likabilityQuests.forEach((element) {
        element.ammountCompleted = 0;
      });
    }
  }

  LikabilityCharacterModel({
    required this.characterName,
    required this.likabilityEpisodes,
  });
}
