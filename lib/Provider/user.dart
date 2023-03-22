import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  final _user = FirebaseAuth.instance.currentUser;

  void refreshUser() {
    try {
      _user!.reload();
      notifyListeners();
    } catch (e) {
      debugPrint('Error refreshing user: $e');
    }
  }

  String? get userName => _user?.displayName;
  String? get userId => _user?.uid;
  String? get userEmail => _user?.email;
  String? get userProfileImg => _user?.photoURL;
}
