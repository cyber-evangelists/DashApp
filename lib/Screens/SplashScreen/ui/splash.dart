import 'package:dash_app/const.dart';
import 'package:dash_app/routes/app_routes_const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () => GoRouter.of(context)
          .pushReplacementNamed(MyAppRoutesConsts.homeSplashRouteName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
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
      ),
    );
  }
}
