import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then(
      (value) {
        Navigator.pushReplacementNamed(context, '/login');
      },
    );

    return Stack(
      children: [
        Container(
          child: Image.asset(
            AppImages.backgroundSplashPage,
            fit: BoxFit.fitHeight,
          ),
          height: double.maxFinite,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "GrandChase",
                style: TextStyles.splashPageTitle,
              ),
              Text(
                "Mobile",
                style: TextStyles.splashPageTitle,
              ),
              SizedBox(height: 24),
              Text(
                "Guia de farm",
                style: TextStyles.splashPageSubtitle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
