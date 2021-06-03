import 'social_media_login_handler.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLoginHandler implements SocialMediaLoginHandler {
  @override
  Future<bool> login() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );

    try {
      final GoogleSignInAccount result =
          (await _googleSignIn.signIn()) as GoogleSignInAccount;
      print(result.email);
      return true;
    } catch (error) {
      print(error);
    }
    return false;
  }
}
