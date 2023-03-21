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

  updateUserProfile(
      {required String name, required String email, required String photoUrl}) {
    try {
      FirebaseFirestore.instance
          .collection('user')
          .doc(_auth.currentUser?.uid ?? 'NvrZEEZJzfSQT3dqUYcBTEekJIt1')
          .update({
        'name': name,
        'email': email,
        'photoUrl': photoUrl,
      });
    } catch (error) {
      debugPrint(error.toString());
    }
  }
}
