import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:myorganizer/app/screens/home/home.dart';
import 'package:myorganizer/app/screens/login/login.dart';
import 'package:myorganizer/app/screens/signup/signup.dart';
import 'package:myorganizer/app/screens/welcome/welcome.dart';
import 'package:myorganizer/app/screens/notes/notes.dart';
import 'package:myorganizer/app/screens/profile/profile.dart';
import 'package:myorganizer/app/screens/alarm/alarm.dart';
import 'package:myorganizer/app/screens/calendar/calendar.dart';
import 'package:myorganizer/app/screens/budget/budget.dart';

abstract class Routes {
  static const HOME = "/home";
  static const WELCOME = "/welcome";
  static const LOGIN = "/login";
  static const SIGNUP = "/signup";
  static const NOTES = "/notes";
  static const PROFILE = "/profile";
  static const ALARM = "/alarm";
  static const CALENDAR = "/calendar";
  static const BUDGET = "/budget";
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
    page: () => HomeScreen(),
  ),
  GetPage(
    name: Routes.NOTES,
    page: () => NotesScreen(),
  ),
  GetPage(
    name: Routes.PROFILE,
    page: () => const ProfileScreen(),
  ),
  GetPage(
    name: Routes.ALARM,
    page: () => const AlarmScreen(),
  ),
  GetPage(
    name: Routes.CALENDAR,
    page: () => const CalendarScreen(),
  ),
  GetPage(
    name: Routes.BUDGET,
    page: () => const BudgetScreen(),
  ),
];
