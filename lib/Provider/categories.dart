import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_app/models/categories.dart';
import 'package:flutter/material.dart';

class CategoriesProvider extends ChangeNotifier {
  List<Categories> categoriesList = [];

  bool fetch = false;

  get getCategoriesList => categoriesList;

  get ctLength => categoriesList.length;

  getCategories() {
    try {
      FirebaseFirestore.instance
          .collection('categories')
          .snapshots()
          .forEach((snapshot) {
        for (var doc in snapshot.docs) {
          Categories.fromJson(doc.data());
        }
      });
    } catch (error) {
      print(error.toString());
    }

    print('FirebaseOutptu: $categoriesList');
    // fetch = true;
    notifyListeners();
  }

  // getCategories() {
  //   return FirebaseFirestore.instance.collection('categories').snapshots().map(
  //       (snapshot) => snapshot.docs
  //           .map((doc) => Categories.fromJson(doc.data())).toList());
  // }
}
