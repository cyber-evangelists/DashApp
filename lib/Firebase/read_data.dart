import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_app/models/categories.dart';
import 'package:dash_app/models/resturant.dart';

getCategoriesFirebase() {
  try {
    return FirebaseFirestore.instance.collection('categories').snapshots().map(
        (snapshot) => snapshot.docs
            .map((doc) => Categories.fromJson(doc.data()))
            .toList());
  } catch (error) {
    print(error.toString());
  }
}

getAllResturants() {
  try {
    return FirebaseFirestore.instance.collection('recommendedCard').snapshots().map(
        (snapshot) => snapshot.docs
            .map((doc) => Restaurant.fromJson(doc.data()))
            .toList());
  } catch (error) {
    print(error.toString());
  }
}
