import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/login/login_form_widget/login_form_widget.dart';
import 'package:grand_chase_farm_guide/login/social_media_login_widget/social_media_login_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              AppImages.backgroundSplashPage,
              fit: BoxFit.fitHeight,
            ),
            height: double.maxFinite,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 2,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginFormWidget(),
                SizedBox(height: 10),
                Text(
                  "Ou",
                  style: TextStyles.loginPageHeader,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: SocialMediaLoginWidget(
                        socialMedia: SocialMedia.facebook,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: SocialMediaLoginWidget(
                        socialMedia: SocialMedia.google,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
