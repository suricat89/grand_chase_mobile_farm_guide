import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/shared/widgets/image_card_widget/image_card_model.dart';

class LikabilityListRepository {
  static double cardSize = 96.0;

  static _getImageCardModel(String title, String imageAssetPath) =>
      ImageCardModel(
        title: title,
        imageAssetPath: imageAssetPath,
        width: cardSize,
        height: cardSize,
        textStyle: TextStyles.likabilityListCards,
        imageFit: BoxFit.cover,
      );

  static final List<ImageCardModel> likabilityCharacters = [
    _getImageCardModel("Amy", AppImages.characterAmy),
    _getImageCardModel("Arme", AppImages.characterArme),
    _getImageCardModel("Dio", AppImages.characterDio),
    _getImageCardModel("Elesis", AppImages.characterElesis),
    _getImageCardModel("Jin", AppImages.characterJin),
    _getImageCardModel("Lass", AppImages.characterLass),
    _getImageCardModel("Rey", AppImages.characterLey),
    _getImageCardModel("Lire", AppImages.characterLire),
    _getImageCardModel("Mari", AppImages.characterMari),
    _getImageCardModel("Nelia", AppImages.characterNelia),
    _getImageCardModel("Lin", AppImages.characterRin),
    _getImageCardModel("Ronan", AppImages.characterRonan),
    _getImageCardModel("Lupus", AppImages.characterRufus),
    _getImageCardModel("Ryan", AppImages.characterRyan),
    _getImageCardModel("Sieghart", AppImages.characterSieghart),
    _getImageCardModel("Zero", AppImages.characterZero),
  ];
}
