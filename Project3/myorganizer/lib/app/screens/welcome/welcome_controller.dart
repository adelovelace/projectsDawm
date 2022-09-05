import 'dart:async';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:myorganizer/app/routes/app_routes.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 5), () => Get.offAll(Routes.HOME));
    super.onInit();
  }
}
