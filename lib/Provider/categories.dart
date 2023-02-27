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
      // FirebaseFirestore.instance.collection('categories').snapshots().map(
      //     (snapshot) {
      //       print('hi');
      //       print('snapshot: $snapshot');
      //       return snapshot.docs.map(
            
      //         (doc) {
      //           print('doc: $doc');
      //           categoriesList.add(Categories.fromJson(doc.data()));
      //         });
      //     });

      FirebaseFirestore.instance.collection('categories').get().then((snapshot) => snapshot.docs.forEach((element) {categoriesList.add(element.data())}),);

              // fetch = true;
      print(categoriesList);
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
