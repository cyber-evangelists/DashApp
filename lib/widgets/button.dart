import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return SizedBox(
      height: 53 * deviceWidth,
      width: 341 * deviceWidth,
      child: ElevatedButton(
        onPressed: () {
          
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 17.0 * deviceWidth,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
