import 'package:dash_app/LoginSignUP/login_screen.dart';
import 'package:dash_app/Screens/Home/home_screen.dart';
import 'package:dash_app/Screens/SplashScreen/ui/splash.dart';
import 'package:dash_app/const.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: primaryColor,
          body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return const Splash();
              } 
              if(snapshot.hasData){
                return const HomeScreen();
              }
              else{
                return const LoginScreen();
              }
            },
          )),
    );
  }
}
