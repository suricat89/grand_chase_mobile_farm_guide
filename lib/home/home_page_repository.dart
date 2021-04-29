import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';

import '../shared/widgets/image_card_widget/image_card_model.dart';

class HomePageRepository {
  static final List<ImageCardModel> homePageItems = [
    ImageCardModel(
      imageAssetPath: AppImages.cardLikability,
      width: double.maxFinite,
      height: 196,
      title: "Missões de afinidade",
      textStyle: TextStyles.homePageCards,
    ),
    ImageCardModel(
      imageAssetPath: AppImages.cardAdventure,
      width: double.maxFinite,
      height: 196,
      title: "Missões de aventura",
      textStyle: TextStyles.homePageCards,
    ),
  ];
}
