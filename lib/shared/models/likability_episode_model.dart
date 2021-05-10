import 'package:grand_chase_farm_guide/shared/models/likability_quest_model.dart';

class LikabilityEpisodeModel {
  int episodeNumber;
  List<LikabilityQuestModel> likabilityQuests;

  String get episodeDescription =>
      "Ep. " + episodeNumber.toString().padLeft(2, "0");

  bool get isEpisodeComplete =>
      likabilityQuests.every((e) => e.ammountCompleted >= e.ammount);

  LikabilityEpisodeModel({
    required this.episodeNumber,
    required this.likabilityQuests,
  });
}
