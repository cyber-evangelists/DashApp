import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Stack(
          children: [
            Positioned(
              left: 20 * deviceWidth,
              child: Image.asset(
                  'assets/images/SplashScreen/kindpng_2142570 1.png'),
            ),
            Positioned(
              right: 0,
              child: Image.asset(
                'assets/images/SplashScreen/image 9.png',
              ),
            ),
            Positioned(
              top: 350 * deviceWidth,
              left: 100 * deviceWidth,
              child: Text(
                'DASH',
                style: TextStyle(
                    fontSize: 60 * deviceWidth,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
