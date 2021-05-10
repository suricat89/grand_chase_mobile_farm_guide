import 'package:flutter/material.dart';

class ImageCardWidget extends StatelessWidget {
  final String imageAssetPath;
  final double width;
  final double height;
  final String title;
  final BoxFit imageFit;
  final TextStyle textStyle;

  const ImageCardWidget({
    Key? key,
    required this.imageAssetPath,
    required this.width,
    required this.height,
    required this.title,
    this.imageFit = BoxFit.cover,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Stack(
        children: [
          Image.asset(
            imageAssetPath,
            fit: imageFit,
            width: width,
            height: height,
          ),
          Container(
            height: height,
            width: width,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 48,
                width: double.maxFinite,
                color: Colors.black38,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
