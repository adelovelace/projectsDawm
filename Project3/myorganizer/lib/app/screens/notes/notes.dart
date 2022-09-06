import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myorganizer/app/screens/navigationBar/navigation_drawer.dart';
import '../../../http_service.dart';
import '../../routes/app_routes.dart';
import '../home/home_controller.dart';

class NotesScreen extends GetView<HomeController> {
  final HttpService httpService = HttpService();
  NotesScreen({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          title: const Text(
            'Notes',
            style: TextStyle(
              color: Colors.black, // 2
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(236, 242, 247, 1),
          elevation: 0,
          foregroundColor: const Color.fromRGBO(57, 38, 140, 1),
          actions: [
            IconButton(
              onPressed: () {
                Get.offAndToNamed(Routes.HOME);
              },
              icon: const Icon(Icons.home),
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(236, 242, 247, 1),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        width: double.infinity,
                        height: 300,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        alignment: Alignment.center,
                        child: Column()),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        width: double.infinity,
                        height: 300,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        alignment: Alignment.center,
                        child: Column())
                  ]))),
        )
        // body: Obx(() => SafeArea(
        //         child: GridView.count(
        //       crossAxisCount: 2,
        //     ))),
        );
  }
}
