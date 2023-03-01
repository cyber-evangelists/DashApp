import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_app/Provider/user.dart';
import 'package:dash_app/Screens/Home/home_screen.dart';
import 'package:dash_app/SharedPrefrences/sharedprefrences.dart';
import 'package:dash_app/routes/app_routes_const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late bool firstLogin;
  bool? firebaseFirstLogin;

  getFirstLogin() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(context.read<UserProvider>().userId)
        .get()
        .then((data) {
      firebaseFirstLogin = data['firstLogin'];
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        await getFirstLogin();
      },
    );

    firstLogin = UserPrefrences.getUserInfo() ?? false;
    print("InitMode: $firstLogin");
    print('FirebaseLogin: $firebaseFirstLogin');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return firstLogin
        ? const HomeScreen()
        : Scaffold(
            body: Center(
              child: TextButton(
                  onPressed: () async {
                    await UserPrefrences.saveUserInfo(true);
                    await FirebaseFirestore.instance
                        .collection('user')
                        .doc(context.read<UserProvider>().userId)
                        .update({'firstLogin': true});
                    GoRouter.of(context)
                        .pushReplacementNamed(MyAppRoutesConsts.homeRouteName);
                  },
                  child: const Text('Home Screen')),
            ),
          );
  }
}
