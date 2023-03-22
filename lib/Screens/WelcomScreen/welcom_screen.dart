import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_app/Provider/sharedref.dart';
import 'package:dash_app/Provider/user.dart';
import 'package:dash_app/Screens/Dashboard/dashboard.dart';
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
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (timeStamp) async {
    //     await getFirstLogin();
    //   },
    // );

    firstLogin =
        context.read<SharedPrefrencesProvider>().getDataInSharedRef ?? true;
    debugPrint('FirebaseLogin: $firebaseFirstLogin');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return firstLogin
        ? Center(
            child: TextButton(
                onPressed: () async {
                  context
                      .read<SharedPrefrencesProvider>()
                      .saveDataInSharedRef(false);
                  await FirebaseFirestore.instance
                      .collection('user')
                      .doc(context.read<UserProvider>().userId)
                      .update({'firstLogin': false});
                  GoRouter.of(context)
                      .pushReplacementNamed(MyAppRoutesConsts.dashboardRouteName);
                },
                child: const Text('Home Screen')),
          )
        : const DashboardScreen();
  }
}
