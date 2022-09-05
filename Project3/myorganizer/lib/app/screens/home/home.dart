import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myorganizer/app/screens/navigationBar/navigation_drawer.dart';
import '../home/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text(
          'My Organizer',
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
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(236, 242, 247, 1),
    );
  }
}
