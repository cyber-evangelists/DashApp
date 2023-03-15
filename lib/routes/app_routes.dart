import 'package:dash_app/Screens/Account/Settings/settings.dart';
import 'package:dash_app/Screens/Account/account_screen.dart';
import 'package:dash_app/Screens/AddGuestScreen/add_guest_on_table_screen.dart';
import 'package:dash_app/Screens/Dashboard/dashboard.dart';
import 'package:dash_app/Screens/Home/home_screen.dart';
import 'package:dash_app/Screens/InterstedScreen/intersted_screen.dart';
import 'package:dash_app/Screens/LoginSignUP/login_screen.dart';
import 'package:dash_app/Screens/ResturantScreen/resturent_screen.dart';
import 'package:dash_app/Screens/SplashScreen/splash_screen.dart';
import 'package:dash_app/Screens/SplashScreen/ui/splash.dart';
import 'package:dash_app/Screens/RecipeDetailsScreen/recipe_details.dart';
import 'package:dash_app/Screens/TableReservationScreen/table_reservation_screen.dart';
import 'package:dash_app/routes/app_routes_const.dart';
import 'package:go_router/go_router.dart';

class MyAppRoutes {
  final GoRouter goRouter = GoRouter(routes: <GoRoute>[
    GoRoute(
      name: MyAppRoutesConsts.splashRouteName,
      path: '/',
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.homeSplashRouteName,
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.loginRouteName,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.dashboardRouteName,
      path: '/dashboard_screen',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.homeRouteName,
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.interstedRouteName,
      path: '/intersted',
      builder: (context, state) => const InterstedScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.resturantRouteName,
      path: '/resturant_screen',
      builder: (context, state) => const ResturentScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.recipeDetailRouteName,
      path: '/recipe_details_screen',
      builder: (context, state) => const RecipeDetailsScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.tableReservationRouteName,
      path: '/table_reservation_screen',
      builder: (context, state) => const TableResevationScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.addGuestRouteName,
      path: '/add_guest_screen',
      builder: (context, state) => const AddGuestOnTableScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.accountRouteName,
      path: '/account_screen',
      builder: (context, state) => const AccountScreen(),
    ),
    GoRoute(
      name: MyAppRoutesConsts.settingsRouteName,
      path: '/setting_screen',
      builder: (context, state) => const SettingsScreen(),
    ),
  ]);
}
