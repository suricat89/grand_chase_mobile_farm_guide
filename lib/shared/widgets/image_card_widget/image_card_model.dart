import 'package:flutter/material.dart';

class ImageCardModel {
  final String imageAssetPath;
  final double width;
  final double height;
  final String title;
  final BoxFit imageFit;
  final TextStyle textStyle;
  final Widget nextPage;

  ImageCardModel({
    required this.imageAssetPath,
    required this.width,
    required this.height,
    required this.title,
    this.imageFit = BoxFit.cover,
    required this.textStyle,
    required this.nextPage,
  });
}
