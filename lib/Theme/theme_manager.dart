import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;

  bool get isDarkMode => _themeMode == ThemeMode.dark;
  get getThemeMode => _themeMode;

  void changeTheme(bool isDarkTheme) {
    print('isDarkTheme $isDarkTheme');
    _themeMode = isDarkTheme? ThemeMode.dark: ThemeMode.light;
    notifyListeners();
  }

  // ThemeData _themeData = DashAppTheme.light();
  // bool get isDarkTheme => _themeData == DashAppTheme.dark();
  // ThemeData get getThemeData => _themeData;
  // void changeTheme(isDarkTheme){
  //   _themeData = isDarkTheme? ThemeData.dark(): ThemeData.light();
  //   notifyListeners();
  // }
}
