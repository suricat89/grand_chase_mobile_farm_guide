import 'package:grand_chase_farm_guide/shared/enum/social_media_enum.dart';
import 'facebook_login_handler.dart';
import 'google_login_handler.dart';

abstract class SocialMediaLoginHandler {
  Future<bool> login();

  static SocialMediaLoginHandler getHandler(SocialMedia socialMedia) {
    switch (socialMedia) {
      case SocialMedia.facebook:
        return FacebookLoginHandler();
      case SocialMedia.google:
        return GoogleLoginHandler();
    }
  }
}
