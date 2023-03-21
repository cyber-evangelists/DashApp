import 'dart:typed_data';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dash_app/Firebase/storage_methods.dart';
import 'package:dash_app/Provider/user.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
 const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Uint8List? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _image = await pickedFile.readAsBytes();
    } else {
      print('No image selected.');
    }
    setState(() {
      _image = _image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.read<UserProvider>().userName ?? "Alexa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_image != null)
              CircleAvatar(
                radius: 50,
                backgroundImage: MemoryImage(_image!),
              ),
            ElevatedButton(
              onPressed: () {
                _image == null
                    ? getImage()
                    : StorageMethods.uploadImageToStorage(
                        childName: 'UserPhotos', file: _image!);
              },
              child: Text(_image == null ? "Select Image" : "Upload Image"),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(10, (index) {
                  return Container(
                    margin: const EdgeInsets.all(8),
                    color: Colors.grey[300],
                    child: Center(
                      child: CachedNetworkImage(imageUrl: 'https://firebasestorage.googleapis.com/v0/b/dash-app-ffc85.appspot.com/o/UserPhotos%2FAlexa%2F722f3a5b-31c4-4950-b134-4a280c44c20d?alt=media&token=32888730-525b-403e-96ea-add85e62e3cd'),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
