import 'dart:typed_data';

import 'package:dash_app/Firebase/imagepick.dart';
import 'package:dash_app/Firebase/read_data.dart';
import 'package:dash_app/Firebase/storage_methods.dart';
import 'package:dash_app/Provider/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  late ImageProvider<Object> _profilePicture;
  Uint8List? _image;
  // Image to be used as profile picture  AssetImage _profilePicture;
  @override
  void initState() {
    super.initState();
// Set default image
    _profilePicture = NetworkImage(context
            .read<UserProvider>()
            .userProfileImg ??
        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png");
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final provider = context.read<UserProvider>();
    _nameController.text = provider.userName ?? "";
    _emailController.text = provider.userEmail ?? "";

    return Scaffold(
        body: Center(
      child: ListView(
        // Set the padding of the ListView
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              InkWell(
                onTap: () async {
                  Uint8List? image = await getImage();
                  if (image != null) {
                    setState(() {
                      _profilePicture = MemoryImage(image);
                      _image = image;
                    });
                  }
                },
                child: CircleAvatar(
                  radius: 70.0, // size of the image
                  backgroundImage: _profilePicture,
                ),
              ),
              const SizedBox(height: 20.0),
              // Label for text fields
              const Text('NAME',
                  style: TextStyle(fontSize: 15.0, color: Colors.grey)),
              // Text Field
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: const BorderSide(color: Colors.green)),
                    hintText: 'Alexa'),
              ),
              const SizedBox(height: 20.0),

              // Label for text fields
              const Text('EMAIL',
                  style: TextStyle(fontSize: 15.0, color: Colors.grey)),
              // Text Field
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(color: Colors.green)),
                  hintText: 'jdoe@gmail.com',
                ),
              ),
              const SizedBox(height: 30.0),

              //Save Button
              InkWell(
                onTap: () async {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) =>
                          const Center(child: CircularProgressIndicator()));

                  // Upload image to storage and get the url
                  String? photoUrl = await FirebaseStorageMethods.uploadImageToStorage(
                      file: _image, isPost: false);
                  photoUrl ??= provider.userProfileImg;
                  auth.currentUser!.updateDisplayName(_nameController.text);
                  auth.currentUser!.updateEmail(_emailController.text);
                  auth.currentUser!.updatePhotoURL(photoUrl);

                  // Update user profile
                  final String result = await FirebaseDataMethods().updateUserProfile(
                      name: _nameController.text,
                      email: _emailController.text,
                      photoUrl: photoUrl!);
                      Fluttertoast.showToast(msg: result);
                  Navigator.pop(context);
                },
                child: Container(
                  height: 60.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Text(
                    'UPDATE PROFILE',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
