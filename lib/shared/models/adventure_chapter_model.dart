import 'package:grand_chase_farm_guide/shared/models/adventure_stage_model.dart';

class AdventureChapterModel {
  final int chapterNumber;
  final List<AdventureStageModel> adventureStages;

  AdventureChapterModel({
    required this.chapterNumber,
    required this.adventureStages,
  });
}
