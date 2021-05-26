import 'package:grand_chase_farm_guide/core/app_images.dart';

class CharacterUtil {
  static String getCharacterPicture(String characterName) {
    switch (characterName) {
      case "Amy":
        return AppImages.characterAmy;
      case "Arme":
        return AppImages.characterArme;
      case "Dio":
        return AppImages.characterDio;
      case "Elesis":
        return AppImages.characterElesis;
      case "Jin":
        return AppImages.characterJin;
      case "Lass":
        return AppImages.characterLass;
      case "Rey":
        return AppImages.characterLey;
      case "Lire":
        return AppImages.characterLire;
      case "Mari":
        return AppImages.characterMari;
      case "Nelia":
        return AppImages.characterNelia;
      case "Lin":
        return AppImages.characterRin;
      case "Ronan":
        return AppImages.characterRonan;
      case "Lupus":
        return AppImages.characterRufus;
      case "Ryan":
        return AppImages.characterRyan;
      case "Sieghart":
        return AppImages.characterSieghart;
      case "Zero":
        return AppImages.characterZero;
      default:
        return "";
    }
  }
}
