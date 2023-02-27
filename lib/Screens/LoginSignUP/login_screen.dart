import 'package:dash_app/Provider/google_signin_provider.dart';
import 'package:dash_app/const.dart';
import 'package:dash_app/widgets/signup_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/Login/Ellipse 29.png'),
            ],
          ),
          SizedBox(height: 43 * deviceWidth),
          Text(
            'Dash',
            style: TextStyle(
                color: Colors.white,
                fontSize: 60 * deviceWidth,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 30 * deviceWidth),
          Expanded(
              child: SizedBox(
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 150.0,
                  top: -30,
                  child: Image.asset('assets/images/Login/image 9.png'),
                ),
                Positioned(
                  left: 50,
                  child:
                      Image.asset('assets/images/Login/kindpng_2142570 1.png'),
                ),
                Positioned(
                  bottom: 0.0,
                  child: Image.asset('assets/images/Login/Ellipse 30.png'),
                ),
                Positioned(
                  top: 40 * deviceWidth,
                  left: 15 * deviceWidth,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(26, 31, 26, 0.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 11),
                          blurRadius: 60.0,
                        ),
                      ],
                    ),
                    width: 343 * deviceWidth,
                    height: 410 * deviceWidth,
                    child: Column(
                      children: [
                        const Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 28.0, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 11.0),
                        const Text(
                          'Welcome back. You’ve been missed!',
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 68.0),
                        //Sign Up with Apple
                        SignUpButton(
                          image: Image.asset('assets/images/Login/apple.png'),
                          platformName: 'Apple',
                        ),
                        const SizedBox(
                          height: 13.0,
                        ),
                        //Sign Up with Google
                        SignUpButton(
                          onTap: () {
                            final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                            provider.googleLogin();
                          },
                          image: Image.asset(
                              'assets/images/Login/flat-color-icons_google.png'),
                          platformName: 'Google',
                        ),
                        const SizedBox(
                          height: 13.0,
                        ),
                        //Sign Up with Facebook
                        SignUpButton(
                          image: Image.asset('assets/images/Login/g10.png'),
                          platformName: 'Facebook',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
