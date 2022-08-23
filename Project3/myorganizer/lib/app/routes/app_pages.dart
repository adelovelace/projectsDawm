import 'package:get/route_manager.dart';
import 'package:myorganizer/views/screens/home.dart';
import 'package:myorganizer/views/screens/login.dart';
import 'package:myorganizer/views/screens/signup.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [

    GetPage(
      name: _Paths.HOME, 
      page: ()=> const HomeScreen(),
      binding: HomeBinding()),
      GetPage(name: _Paths.SPLASH, page: ()=> const SplashView(),
      binding: SplashBinding())
    GetPage(
      name: _Paths.LOGIN, 
      page: ()=>LoginScreen(),
      binding: LoginBinding()
    ),
    GetPage(
      name: _Paths.SIGNUP, 
      page: ()=>SignupScreen(),
      binding: SingupBinding()
    ),



  ]
}
