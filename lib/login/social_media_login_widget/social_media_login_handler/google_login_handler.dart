import 'package:grand_chase_farm_guide/shared/models/login_data_model.dart';

import 'social_media_login_handler.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLoginHandler implements SocialMediaLoginHandler {
  @override
  Future<LoginDataModel> login() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );

    final GoogleSignInAccount result =
        (await _googleSignIn.signIn()) as GoogleSignInAccount;
    return LoginDataModel.getGoogleLoginData(result);
  }
}
