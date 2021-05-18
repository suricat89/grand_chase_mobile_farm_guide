import 'package:grand_chase_farm_guide/shared/models/adventure_chapter_model.dart';

class AdventureWorldModel {
  final int worldNumber;
  final List<AdventureChapterModel> chapters;

  AdventureWorldModel({
    required this.worldNumber,
    required this.chapters,
  });
}
