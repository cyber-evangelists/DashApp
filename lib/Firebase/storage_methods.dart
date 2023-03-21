import 'dart:typed_data';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class StorageMethods {
  static final FirebaseStorage _storage = FirebaseStorage.instance;
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future uploadImageToStorage(
      {required String childName, required Uint8List file}) async {
    Reference ref = _storage
        .ref()
        .child(childName)
        .child(_auth.currentUser?.displayName ?? 'Alexa')
        .child(const Uuid().v4());

    UploadTask uploadTask = ref.putData(file);

    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    debugPrint(downloadUrl);
    return downloadUrl;
  }
}
