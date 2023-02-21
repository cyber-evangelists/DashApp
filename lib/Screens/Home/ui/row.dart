import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class RecommendedRow extends StatelessWidget {
  const RecommendedRow(
      {super.key, required this.firstText, this.secondText = 'View All'});
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: Text(
            secondText,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
