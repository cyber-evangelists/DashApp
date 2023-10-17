import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_app/models/categories.dart';
import 'package:dash_app/models/resturant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FirebaseDataMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  getCategoriesFirebase() {
    try {
      return FirebaseFirestore.instance
          .collection('categories')
          .snapshots()
          .map((snapshot) => snapshot.docs
              .map((doc) => Categories.fromJson(doc.data()))
              .toList());
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  getAllResturants() {
    try {
      return FirebaseFirestore.instance
          .collection('recommendedCard')
          .snapshots()
          .map((snapshot) => snapshot.docs
              .map((doc) => Restaurant.fromJson(doc.data()))
              .toList());
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  getUserPosts() {
    try {
      return FirebaseFirestore.instance
          .collection('UserPosts')
          .doc(_auth.currentUser!.uid)
          .collection('Posts')
          .get()
          .then((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());
      // .snapshots()
      // .map((snapshot) =>
      //     snapshot.docs.map((doc) => doc.data()).toList());
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  updateUserProfile(
      {required String name, required String email, required String photoUrl}) {
    String result = 'Profile Updated';
    try {
      if (_auth.currentUser?.uid == null) return;
      FirebaseFirestore.instance
          .collection('user')
          .doc(_auth.currentUser!.uid)
          .update({
        'name': name,
        'email': email,
        'photoUrl': photoUrl,
      });
    } catch (error) {
      result = error.toString();
    }
    return result;
  }
}
