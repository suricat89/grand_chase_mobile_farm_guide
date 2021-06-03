import 'package:google_sign_in/google_sign_in.dart';
import 'package:grand_chase_farm_guide/shared/enum/login_types_enum.dart';

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginDataModel {
  String userName;
  LoginTypes loginType;

  LoginDataModel({required this.loginType, required this.userName});

  static LoginDataModel getNormalLoginData(String userName) =>
      LoginDataModel(loginType: LoginTypes.NormalAccount, userName: userName);

  static LoginDataModel getFacebookLoginData(AccessToken facebookToken) =>
      LoginDataModel(
          loginType: LoginTypes.FacebookAccount,
          userName: facebookToken.userId);

  static LoginDataModel getGoogleLoginData(GoogleSignInAccount googleData) =>
      LoginDataModel(
          loginType: LoginTypes.GoogleAccount, userName: googleData.email);
}
