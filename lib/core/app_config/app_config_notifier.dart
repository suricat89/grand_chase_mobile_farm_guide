import 'package:flutter/material.dart';
import 'package:grand_chase_farm_guide/shared/enum/login_types_enum.dart';
import 'package:grand_chase_farm_guide/shared/models/login_data_model.dart';

import 'app_theme_schemes.dart';

class AppConfigNotifier with ChangeNotifier {
  late ThemeData _selectedTheme;
  ThemeData get selectedTheme => _selectedTheme;

  late LoginDataModel _loginData;
  LoginDataModel get loginData => _loginData;
  set loginData(value) {
    _loginData = value;
  }

  void clearLoginData() {
    _loginData.userName = '';
  }

  AppConfigNotifier() {
    _selectedTheme = AppThemeSchemes.lightTheme;
    notifyListeners();
  }

  void setDarkTheme() {
    _selectedTheme = AppThemeSchemes.darkTheme;
    notifyListeners();
  }

  void setLightTheme() {
    _selectedTheme = AppThemeSchemes.lightTheme;
    notifyListeners();
  }

  void toggleTheme() {
    if (selectedTheme == AppThemeSchemes.lightTheme) {
      setDarkTheme();
    } else {
      setLightTheme();
    }
  }
}
