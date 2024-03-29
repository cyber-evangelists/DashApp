import 'dart:typed_data';

import 'package:dash_app/Firebase/imagepick.dart';
import 'package:dash_app/Firebase/storage_methods.dart';
import 'package:dash_app/Provider/user.dart';
import 'package:dash_app/Provider/user_posts.dart';
import 'package:dash_app/Screens/Profile/image_screen.dart';
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
  List<dynamic>? images;

  @override
  Widget build(BuildContext context) {
    final provider = context.read<UserProvider>();
    final pimages = context.watch<UserPostsProvider>().postImages;
    pimages.then((value) {
      setState(() {
        images = value;
      });
    });
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
            child: images != null
                ? GridView.builder(
                    padding: const EdgeInsets.all(8.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: images!.length,
                    itemBuilder: (BuildContext context, int index) {
                      final thisImage = images![index];
                      return Hero(
                        tag: thisImage['postImage'],
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DisplayThisImage(
                                image: thisImage['postImage'],
                                description: '',
                              ),
                            ));
                          },
                          child: Image.network(
                            thisImage['postImage'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(
                        backgroundColor: primaryColor),
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
