import 'package:get/get.dart';
import 'package:myorganizer/app/routes/app_routes.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  navigateToPage(int index) {
    if (index == 0) {
      Get.toNamed(Routes.PROFILE);
    } else if (index == 1) {
      Get.toNamed(Routes.CALENDAR);
    } else if (index == 2) {
      Get.toNamed(Routes.NOTES);
    } else if (index == 3) {
      Get.toNamed(Routes.BUDGET);
    } else if (index == 4) {
      Get.toNamed(Routes.ALARM);
    }
  }
}
