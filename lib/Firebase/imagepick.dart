import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

Future getImage() async {
  final picker = ImagePicker();
  Uint8List? image;
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    image = await pickedFile.readAsBytes();
  } else {
    image = null;
  }
  return image;
}
