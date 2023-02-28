import 'package:dash_app/Screens/Home/home_screen.dart';
import 'package:dash_app/Screens/LoginSignUP/login_screen.dart';
import 'package:dash_app/Screens/SplashScreen/splash_screen.dart';
import 'package:dash_app/routes/app_routes_const.dart';
import 'package:go_router/go_router.dart';

class MyAppRoutes {
  final GoRouter goRouter = GoRouter(routes: <GoRoute>[
    GoRoute(
      name: MyAppRoutesConsts.homeSplashRouteName,
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.loginRouteName,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.homeRouteName,
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
  ]);
}
