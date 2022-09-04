import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:myorganizer/app/routes/app_routes.dart';

void main() async {
  runApp(GetMaterialApp(
    title: "My Organizer!",
    getPages: appPages,
    initialRoute: Routes.WELCOME,
    debugShowCheckedModeBanner: false,
  ));
}
