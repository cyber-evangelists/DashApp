import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final Widget image;
  final String platformName;
  final void Function()? onTap;
  const SignUpButton(
      {super.key, required this.image, required this.platformName, this.onTap});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(17.0, 10, 0, 10),
        height: 50.0 * deviceWidth,
        width: 291 * deviceWidth,
        color: const Color.fromRGBO(241, 245, 246, 1),
        child: Row(
          children: [
            image,
            SizedBox(
              width: 37.0 * deviceWidth,
            ),
            Text(
              'Continue with $platformName',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(102, 105, 105, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
