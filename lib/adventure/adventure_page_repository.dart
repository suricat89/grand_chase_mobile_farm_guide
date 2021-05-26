import 'package:grand_chase_farm_guide/shared/enum/boss_types_enum.dart';
import 'package:grand_chase_farm_guide/shared/enum/drop_types_enum.dart';
import 'package:grand_chase_farm_guide/shared/models/adventure_chapter_model.dart';
import 'package:grand_chase_farm_guide/shared/models/adventure_stage_model.dart';
import 'package:grand_chase_farm_guide/shared/models/adventure_world_model.dart';

class AdventureRepository {
  List<AdventureWorldModel> worlds = [
    AdventureWorldModel(
      worldNumber: 7,
      chapters: [
        AdventureChapterModel(
          chapterNumber: 23,
          adventureStages: [
            AdventureStageModel(
              stageNumber: 3,
              bossType: BossTypes.tank,
              drops: [
                DropTypes.healerSoulstone,
                DropTypes.blessingsOfValor,
              ],
            ),
            AdventureStageModel(
              stageNumber: 6,
              bossType: BossTypes.ranger,
              drops: [
                DropTypes.rangerSoulstone,
                DropTypes.rangerSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 9,
              bossType: BossTypes.mage,
              drops: [
                DropTypes.assaultSoulstone,
                DropTypes.assaultSCard,
              ],
            )
          ],
        ),
        AdventureChapterModel(
          chapterNumber: 24,
          adventureStages: [
            AdventureStageModel(
              stageNumber: 3,
              bossType: BossTypes.assault,
              drops: [
                DropTypes.mageSoulstone,
                DropTypes.mageSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 6,
              bossType: BossTypes.healer,
              drops: [
                DropTypes.healerSoulstone,
                DropTypes.healerSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 9,
              bossType: BossTypes.tank,
              drops: [
                DropTypes.tankSoulstone,
                DropTypes.tankSCard,
              ],
            )
          ],
        ),
        AdventureChapterModel(
          chapterNumber: 25,
          adventureStages: [
            AdventureStageModel(
              stageNumber: 3,
              bossType: BossTypes.assault,
              drops: [
                DropTypes.mageSoulstone,
                DropTypes.mageSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 6,
              bossType: BossTypes.healer,
              drops: [
                DropTypes.healerSoulstone,
                DropTypes.healerSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 9,
              bossType: BossTypes.tank,
              drops: [
                DropTypes.tankSoulstone,
                DropTypes.tankSCard,
              ],
            )
          ],
        )
      ],
    ),
    AdventureWorldModel(
      worldNumber: 8,
      chapters: [
        AdventureChapterModel(
          chapterNumber: 26,
          adventureStages: [
            AdventureStageModel(
              stageNumber: 3,
              bossType: BossTypes.tank,
              drops: [
                DropTypes.healerSoulstone,
                DropTypes.blessingsOfValor,
              ],
            ),
            AdventureStageModel(
              stageNumber: 6,
              bossType: BossTypes.ranger,
              drops: [
                DropTypes.rangerSoulstone,
                DropTypes.rangerSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 9,
              bossType: BossTypes.mage,
              drops: [
                DropTypes.assaultSoulstone,
                DropTypes.assaultSCard,
              ],
            )
          ],
        ),
        AdventureChapterModel(
          chapterNumber: 27,
          adventureStages: [
            AdventureStageModel(
              stageNumber: 3,
              bossType: BossTypes.assault,
              drops: [
                DropTypes.mageSoulstone,
                DropTypes.mageSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 6,
              bossType: BossTypes.healer,
              drops: [
                DropTypes.healerSoulstone,
                DropTypes.healerSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 9,
              bossType: BossTypes.tank,
              drops: [
                DropTypes.tankSoulstone,
                DropTypes.tankSCard,
              ],
            )
          ],
        ),
        AdventureChapterModel(
          chapterNumber: 28,
          adventureStages: [
            AdventureStageModel(
              stageNumber: 3,
              bossType: BossTypes.assault,
              drops: [
                DropTypes.mageSoulstone,
                DropTypes.mageSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 6,
              bossType: BossTypes.healer,
              drops: [
                DropTypes.healerSoulstone,
                DropTypes.healerSCard,
              ],
            ),
            AdventureStageModel(
              stageNumber: 9,
              bossType: BossTypes.tank,
              drops: [
                DropTypes.tankSoulstone,
                DropTypes.tankSCard,
              ],
            )
          ],
        )
      ],
    )
  ];
}
