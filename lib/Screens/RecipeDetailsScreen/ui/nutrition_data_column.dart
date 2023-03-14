import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class NutritionDataColumn extends StatelessWidget {
  final String nutritionType, nutritionValue;
  const NutritionDataColumn({super.key, required this.nutritionType, required this.nutritionValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          nutritionType,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12.0),
        ),
        Text(
          nutritionValue,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 15.0, color: primaryColor),
        ),
      ],
    );
  }
}
