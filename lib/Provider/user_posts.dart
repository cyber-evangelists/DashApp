import 'package:dash_app/Firebase/read_data.dart';
import 'package:flutter/material.dart';

class UserPostsProvider extends ChangeNotifier {
  List<dynamic>? _images;

  get postImage => _images;

  get postImages async {
    return await FirebaseDataMethods().getUserPosts();
  }

}