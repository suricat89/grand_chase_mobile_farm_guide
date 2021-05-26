import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/likability_details/likability_details_page.dart';
import 'package:grand_chase_farm_guide/shared/util/character_util.dart';
import 'package:grand_chase_farm_guide/shared/widgets/image_card_widget/image_card_model.dart';

class LikabilityListRepository {
  static double cardSize = 96.0;

  static ImageCardModel _getImageCardModel(
          String title, String imageAssetPath) =>
      ImageCardModel(
        title: title,
        imageAssetPath: imageAssetPath,
        width: cardSize,
        height: cardSize,
        textStyle: TextStyles.likabilityListCards,
        imageFit: BoxFit.cover,
        nextPage: LikabilityDetailsPage(
          selectedCharacterName: title,
        ),
      );

  static final List<ImageCardModel> likabilityCharacters = [
    _getImageCardModel("Amy", CharacterUtil.getCharacterPicture("Amy")),
    _getImageCardModel("Arme", CharacterUtil.getCharacterPicture("Arme")),
    _getImageCardModel("Dio", CharacterUtil.getCharacterPicture("Dio")),
    _getImageCardModel("Elesis", CharacterUtil.getCharacterPicture("Elesis")),
    _getImageCardModel("Jin", CharacterUtil.getCharacterPicture("Jin")),
    _getImageCardModel("Lass", CharacterUtil.getCharacterPicture("Lass")),
    _getImageCardModel("Rey", CharacterUtil.getCharacterPicture("Rey")),
    _getImageCardModel("Lire", CharacterUtil.getCharacterPicture("Lire")),
    _getImageCardModel("Mari", CharacterUtil.getCharacterPicture("Mari")),
    _getImageCardModel("Nelia", CharacterUtil.getCharacterPicture("Nelia")),
    _getImageCardModel("Lin", CharacterUtil.getCharacterPicture("Lin")),
    _getImageCardModel("Ronan", CharacterUtil.getCharacterPicture("Ronan")),
    _getImageCardModel("Lupus", CharacterUtil.getCharacterPicture("Lupus")),
    _getImageCardModel("Ryan", CharacterUtil.getCharacterPicture("Ryan")),
    _getImageCardModel(
        "Sieghart", CharacterUtil.getCharacterPicture("Sieghart")),
    _getImageCardModel("Zero", CharacterUtil.getCharacterPicture("Zero")),
  ];
}
