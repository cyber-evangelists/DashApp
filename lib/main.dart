import 'package:dash_app/Provider/categories.dart';
import 'package:dash_app/Provider/google_signin_provider.dart';
import 'package:dash_app/Provider/sharedref.dart';
import 'package:dash_app/Provider/user.dart';
import 'package:dash_app/SharedPrefrences/sharedprefrences.dart';
import 'package:dash_app/Theme/theme.dart';
import 'package:dash_app/Theme/theme_manager.dart';
import 'package:dash_app/firebase_options.dart';
import 'package:dash_app/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await UserPrefrences.init();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeManager(),
    ),
    ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => CategoriesProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SharedPrefrencesProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      routeInformationParser: MyAppRoutes().goRouter.routeInformationParser,
      routerDelegate: MyAppRoutes().goRouter.routerDelegate,
    );
}
