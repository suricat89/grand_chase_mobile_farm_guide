import 'package:flutter/material.dart';

class LoginFormController {
  final userNameNotifier = ValueNotifier<String>("");
  set userName(String value) => userNameNotifier.value = value;
  String get userName => userNameNotifier.value;

  final passwordNotifier = ValueNotifier<String>("");
  set password(String value) => passwordNotifier.value = value;
  String get password => passwordNotifier.value;

  final displayPasswordNotifier = ValueNotifier<bool>(false);
  set displayPassword(bool value) => displayPasswordNotifier.value = value;
  bool get displayPassword => displayPasswordNotifier.value;

  final keepUserLoggedInNotifier = ValueNotifier<bool>(true);
  set keepUserLoggedIn(bool value) => keepUserLoggedInNotifier.value = value;
  bool get keepUserLoggedIn => keepUserLoggedInNotifier.value;
}
