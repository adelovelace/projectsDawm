import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myorganizer/app/screens/navigationBar/navigation_drawer.dart';
import '../../routes/app_routes.dart';
import '../home/home_controller.dart';

class ProfileScreen extends GetView<HomeController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          title: const Text(
            'Profile',
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
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 20,
              ),
              Text(
                'First Name',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(57, 38, 140, 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'First Name',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(57, 38, 140, 1),
                            width: 3.0))),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Last Name',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(57, 38, 140, 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Last Name',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(57, 38, 140, 1),
                            width: 3.0))),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Email',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(57, 38, 140, 1))),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(57, 38, 140, 1),
                            width: 3.0))),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Password',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(57, 38, 140, 1))),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(57, 38, 140, 1),
                            width: 3.0))),
              ),
              SizedBox(
                height: 40,
              ),
              Text('Re-enter Password',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(57, 38, 140, 1))),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Re-enter Password',
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(57, 38, 140, 1),
                            width: 3.0))),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
