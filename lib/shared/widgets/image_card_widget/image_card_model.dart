import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/shared/widgets/image_card_widget/image_card_widget.dart';

class ImageCardModel {
  final String imageAssetPath;
  final double width;
  final double height;
  final String title;
  final BoxFit imageFit;
  final TextStyle textStyle;

  ImageCardModel({
    required this.imageAssetPath,
    required this.width,
    required this.height,
    required this.title,
    this.imageFit = BoxFit.cover,
    required this.textStyle,
  });

  ImageCardWidget get imageCardWidget => ImageCardWidget(
        imageAssetPath: imageAssetPath,
        width: width,
        height: height,
        title: title,
        textStyle: textStyle,
      );
}
