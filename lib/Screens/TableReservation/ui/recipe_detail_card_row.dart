import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class RecipeDetailCardRown extends StatelessWidget {
  final Widget icon;
  final String firstText;
  final String secondText;
  const RecipeDetailCardRown(
      {super.key,
      required this.icon,
      required this.firstText,
      required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: 9.0),
            Text(
              firstText,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Text(
          secondText,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w500, color: primaryColor),
        ),
      ],
    );
  }
}
