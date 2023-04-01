import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  get getThemeMode => themeMode;

  void toggleTheme() {
    switch (themeMode) {
      case ThemeMode.dark:
        themeMode = ThemeMode.light;
        break;
      case ThemeMode.light:
        themeMode = ThemeMode.dark;
        break;
      case ThemeMode.system:
        themeMode = ThemeMode.dark;
        break;
      default:
        themeMode = ThemeMode.system;
        break;
    }
    notifyListeners();
  }
}
