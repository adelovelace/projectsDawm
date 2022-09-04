import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myorganizer/app/views/screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Container(
        color: const Color.fromRGBO(236, 242, 247, 1),
        alignment: Alignment.center,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/pencil-case.png',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            )
          ],
        )));
  }
}

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Timer(
      const Duration(seconds: 5),
      () => Get.offAll(
        const LoginScreen(),
      ),
    );
  }
}
