import 'package:grand_chase_farm_guide/shared/enum/social_media_enum.dart';
import 'package:grand_chase_farm_guide/shared/models/login_data_model.dart';
import 'facebook_login_handler.dart';
import 'google_login_handler.dart';

abstract class SocialMediaLoginHandler {
  Future<LoginDataModel> login();

  static SocialMediaLoginHandler getHandler(SocialMedia socialMedia) {
    switch (socialMedia) {
      case SocialMedia.facebook:
        return FacebookLoginHandler();
      case SocialMedia.google:
        return GoogleLoginHandler();
    }
  }
}
