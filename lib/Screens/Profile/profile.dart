import 'dart:typed_data';

import 'package:dash_app/Firebase/imagepick.dart';
import 'package:dash_app/Firebase/storage_methods.dart';
import 'package:dash_app/Provider/user.dart';
import 'package:dash_app/const.dart';
import 'package:dash_app/routes/app_routes_const.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> _images = [
    'https://picsum.photos/id/237/200/300',
    'https://picsum.photos/id/238/200/300',
    'https://picsum.photos/id/239/200/300',
    'https://picsum.photos/id/240/200/300',
    'https://picsum.photos/id/241/200/300',
    'https://picsum.photos/id/242/200/300',
    'https://picsum.photos/id/243/200/300',
    'https://picsum.photos/id/244/200/300',
    'https://picsum.photos/id/247/200/300',
    'https://picsum.photos/id/248/200/300',
    'https://picsum.photos/id/249/200/300',
    'https://picsum.photos/id/250/200/300',
  ];

  @override
  Widget build(BuildContext context) {
    final provider = context.read<UserProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(provider.userProfileImg ??
                      "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                ),
                Column(
                  children: [
                    Text(
                      provider.userName ?? 'John Doe',
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      '10 posts',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context)
                        .pushNamed(MyAppRoutesConsts.profilePageRouteName);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor, // set the background color
                  ),
                  child: const Text('Edit Profile'),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: _images.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  _images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Uint8List? image = await getImage();
          if (image != null) {
            await FirebaseStorageMethods.uploadImageToStorage(
                file: image, isPost: true);
            Fluttertoast.showToast(msg: 'Image Uploaded Successfully');
          } else {
            Fluttertoast.showToast(msg: 'Image Upload Failed');
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
