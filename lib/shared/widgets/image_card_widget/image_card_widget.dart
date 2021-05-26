import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_shadows.dart';

class ImageCardWidget extends StatelessWidget {
  final String imageAssetPath;
  final double width;
  final double height;
  final String title;
  final BoxFit imageFit;
  final TextStyle textStyle;
  final VoidCallback onTap;

  const ImageCardWidget({
    Key? key,
    required this.imageAssetPath,
    required this.width,
    required this.height,
    required this.title,
    this.imageFit = BoxFit.cover,
    required this.textStyle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: AppShadows.boxShadow04dp,
      ),
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(boxShadow: kElevationToShadow[2]),
            child: Image.asset(
              imageAssetPath,
              fit: imageFit,
              width: width,
              height: height,
            ),
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
          ),
          ElevatedButton(
            onPressed: () {
              onTap();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
            ),
            child: SizedBox(
              width: width,
              height: height,
            ),
          )
        ],
      ),
    );
  }
}
