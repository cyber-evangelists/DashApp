import 'package:shared_preferences/shared_preferences.dart';

class UserPrefrences{
  static SharedPreferences? _sharedPreferences;

  static const _key = 'firstLogin';

  static Future init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future saveUserInfo(bool firstLogin) async {
    await _sharedPreferences!.setBool(_key, firstLogin);
  }

  static bool? getUserInfo() {
    return _sharedPreferences!.getBool(_key);
  }
}
