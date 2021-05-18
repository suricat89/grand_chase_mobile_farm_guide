import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/shared/enum/drop_types_enum.dart';

class DropTypesUtil {
  static String getDropImageAsset(DropTypes drop) {
    switch (drop) {
      case DropTypes.assaultSCard:
        return AppImages.sCardAssault;
      case DropTypes.healerSCard:
        return AppImages.sCardHealer;
      case DropTypes.mageSCard:
        return AppImages.sCardMage;
      case DropTypes.rangerSCard:
        return AppImages.sCardRanger;
      case DropTypes.tankSCard:
        return AppImages.sCardTank;
      case DropTypes.assaultSoulstone:
        return AppImages.evostoneAssault;
      case DropTypes.healerSoulstone:
        return AppImages.evostoneHealer;
      case DropTypes.mageSoulstone:
        return AppImages.evostoneMage;
      case DropTypes.rangerSoulstone:
        return AppImages.evostoneRanger;
      case DropTypes.tankSoulstone:
        return AppImages.evostoneTank;
      case DropTypes.blessingsOfValor:
        return AppImages.itemBoV;
      default:
        return "";
    }
  }
}
