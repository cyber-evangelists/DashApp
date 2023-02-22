import 'package:dash_app/const.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Stack(
      children: [
        Positioned(
          left: 20 * deviceWidth,
          child:
              Image.asset('assets/images/SplashScreen/kindpng_2142570 1.png'),
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
    );
  }
}
