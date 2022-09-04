import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:myorganizer/app/views/screens/home.dart';
import 'package:myorganizer/app/views/screens/login.dart';
import 'package:myorganizer/app/views/screens/signup.dart';
import 'package:myorganizer/app/views/screens/welcome.dart';

abstract class Routes {
  static const HOME = "/home";
  static const WELCOME = "/welcome";
  static const LOGIN = "/login";
  static const SIGNUP = "/signup";
}

final appPages = [
  GetPage(
    name: Routes.WELCOME,
    page: () => const WelcomeScreen(),
  ),
  GetPage(
    name: Routes.LOGIN,
    page: () => const LoginScreen(),
    // middlewares: [
    //   PremiumGuard(),
    // ],
  ),
  GetPage(
    name: Routes.SIGNUP,
    page: () => const SignupScreen(),
  ),
  GetPage(
    name: Routes.HOME,
    page: () => const HomeScreen(),
  ),
];
