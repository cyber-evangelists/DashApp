import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class StorageMethods {
  static final FirebaseStorage _storage = FirebaseStorage.instance;
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static late Reference _ref;

  static Future uploadImageToStorage(
      {required Uint8List? file, required bool isPost}) async {
    if (isPost) {
      _ref = _storage
          .ref()
          .child('UserPhotos')
          .child(_auth.currentUser?.uid ?? 'Random Uid')
          .child(const Uuid().v4());
    } else {
      _ref = _storage
          .ref()
          .child('UserProfile')
          .child(_auth.currentUser?.uid ?? 'Random Uid');
    }

    if (file != null) {
      UploadTask uploadTask = _ref.putData(file);
      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      debugPrint(downloadUrl);
      return downloadUrl;
    }

    return null;
  }
}
