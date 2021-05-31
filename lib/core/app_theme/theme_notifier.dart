import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF212121),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.white24,
    appBarTheme: AppBarTheme(
      color: const Color(0xFF363636),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(Color(0xFF262626)),
    ),
  );

  final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Color(0xFF6200EE),
    brightness: Brightness.light,
    backgroundColor: const Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.black26,
    appBarTheme: AppBarTheme(
      color: const Color(0xFF6200EE),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(Color(0xFF6200EE)),
    ),
    sliderTheme: SliderThemeData(
      thumbColor: Color(0xFF6200EE),
      activeTrackColor: Color(0xFF6200EE).withOpacity(0.7),
    ),
  );

  late ThemeData _selectedTheme;
  ThemeData get selectedTheme => _selectedTheme;

  ThemeNotifier() {
    _selectedTheme = lightTheme;
    notifyListeners();
  }

  void setDarkMode() {
    _selectedTheme = darkTheme;
    notifyListeners();
  }

  void setLightMode() {
    _selectedTheme = lightTheme;
    notifyListeners();
  }

  void toggleMode() {
    if (selectedTheme == lightTheme) {
      setDarkMode();
    } else {
      setLightMode();
    }
  }
}
