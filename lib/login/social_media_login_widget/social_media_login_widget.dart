import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/core/app_colors.dart';
import 'package:grand_chase_farm_guide/core/app_images.dart';
import 'package:grand_chase_farm_guide/core/text_styles.dart';
import 'package:grand_chase_farm_guide/login/social_media_login_widget/social_media_login_model.dart';

enum SocialMedia { facebook, google }

class SocialMediaLoginWidget extends StatelessWidget {
  final SocialMedia socialMedia;
  const SocialMediaLoginWidget({
    Key? key,
    required this.socialMedia,
  }) : super(key: key);

  SocialMediaLoginModel getSocialMediaLoginModel() {
    switch (socialMedia) {
      case SocialMedia.facebook:
        return SocialMediaLoginModel(
          text: "Continuar com Facebook",
          imageAssetPath: AppImages.iconFacebook,
          backgroundColor: AppColors.loginFacebook,
          overlayColor: AppColors.loginFacebookOverlay,
        );
      case SocialMedia.google:
        return SocialMediaLoginModel(
          text: "Continuar com Google",
          imageAssetPath: AppImages.iconGoogle,
          backgroundColor: AppColors.loginGoogle,
          overlayColor: AppColors.loginGoogleOverlay,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    SocialMediaLoginModel model = getSocialMediaLoginModel();

    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(15)),
        backgroundColor: MaterialStateProperty.all(model.backgroundColor),
        overlayColor: MaterialStateProperty.all(model.overlayColor),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Row(
        children: [
          Image.asset(
            model.imageAssetPath,
            height: 48,
            width: 48,
          ),
          SizedBox(width: 20),
          Text(
            model.text,
            style: TextStyles.loginPageSocialMediaDescription,
          ),
        ],
      ),
    );
  }
}
