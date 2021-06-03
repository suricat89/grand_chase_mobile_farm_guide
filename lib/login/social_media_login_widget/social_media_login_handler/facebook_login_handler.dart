import 'package:grand_chase_farm_guide/shared/models/login_data_model.dart';

import 'social_media_login_handler.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookLoginHandler implements SocialMediaLoginHandler {
  @override
  Future<LoginDataModel> login() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.accessToken != null)
      return LoginDataModel.getFacebookLoginData(result.accessToken!);
    else
      throw Error();
  }
}
