import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grand_chase_farm_guide/core/app_shadows.dart';
import 'package:grand_chase_farm_guide/shared/models/adventure_stage_model.dart';
import 'package:grand_chase_farm_guide/shared/util/boss_types_util.dart';
import 'package:grand_chase_farm_guide/shared/util/drop_types_util.dart';

class AdventureStageWidget extends StatelessWidget {
  final int chapterNumber;
  final AdventureStageModel stage;
  const AdventureStageWidget({
    Key? key,
    required this.chapterNumber,
    required this.stage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: AppShadows.boxShadow04dp,
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsets.only(top: 5, right: 24, bottom: 8, left: 24),
      padding: const EdgeInsets.all(10),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$chapterNumber-${stage.stageNumber}",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          Image.asset(
            BossTypesUtil.getBossTypeImageAsset(stage.bossType),
            width: 100,
          ),
          Container(
            child: Row(
              children: stage.drops
                  .map(
                    (drop) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Image.asset(
                        DropTypesUtil.getDropImageAsset(drop),
                        width: 40,
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
