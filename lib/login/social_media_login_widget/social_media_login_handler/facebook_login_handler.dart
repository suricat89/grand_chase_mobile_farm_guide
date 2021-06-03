import 'social_media_login_handler.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookLoginHandler implements SocialMediaLoginHandler {
  @override
  Future<bool> login() async {
    final LoginResult result = await FacebookAuth.instance.login();
    print(result.accessToken!.userId);
    return result.status == LoginStatus.success;
  }
}
