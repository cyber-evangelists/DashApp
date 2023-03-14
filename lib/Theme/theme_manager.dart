import 'package:dash_app/Theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _themeData = ThemeMode.dark;

  bool get isDarkMode => _themeData == ThemeMode.dark;
  get getThemeData => _themeData;

  void changeTheme(isOn) {
    _themeData = isOn? ThemeMode.light: ThemeMode.dark;
    notifyListeners();
  }
}
