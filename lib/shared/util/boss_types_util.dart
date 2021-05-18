import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/shared/enum/boss_types_enum.dart';

class BossTypesUtil {
  static String getBossTypeImageAsset(BossTypes bossType) {
    switch (bossType) {
      case BossTypes.assault:
        return AppImages.bossStickerAssault;
      case BossTypes.healer:
        return AppImages.bossStickerHealer;
      case BossTypes.mage:
        return AppImages.bossStickerMage;
      case BossTypes.ranger:
        return AppImages.bossStickerRanger;
      case BossTypes.tank:
        return AppImages.bossStickerTank;
      default:
        return "";
    }
  }
}
