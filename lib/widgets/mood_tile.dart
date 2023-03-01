import 'package:dash_app/models/categories.dart';
import 'package:flutter/material.dart';

class MoodTile extends StatelessWidget {
  final Categories categorie;
  final void Function()? onTap;
  const MoodTile({super.key, required this.categorie, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Column(
          children: [
            Image.network(categorie.ctImgLink),
            Text(
              categorie.ctText,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(77, 81, 81, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
