import 'package:dash_app/SharedPrefrences/sharedprefrences.dart';
import 'package:flutter/material.dart';

class SharedPrefrencesProvider with ChangeNotifier {
  bool? _isFirstLogin;

  void saveDataInSharedRef(bool isFirstLogin) async{
    _isFirstLogin = isFirstLogin;
    await UserPrefrences.saveUserInfo(_isFirstLogin!);
    notifyListeners();
  }

  bool? get getDataInSharedRef => UserPrefrences.getUserInfo();
}
