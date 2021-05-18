import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/shared/enum/boss_types_enum.dart';
import 'package:grand_chase_farm_guide/shared/enum/drop_types_enum.dart';

class AdventureStageModel {
  final int stageNumber;
  final BossTypes bossType;
  final List<DropTypes> drops;

  AdventureStageModel({
    required this.stageNumber,
    required this.bossType,
    required this.drops,
  });
}
