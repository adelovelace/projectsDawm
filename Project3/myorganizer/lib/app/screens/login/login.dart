import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myorganizer/app/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 242, 247, 1),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/pencil-case.png',
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
              ),
              const Center(
                  child: Text("My Organizer!", style: TextStyle(fontSize: 20))),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    Text('Email',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(57, 38, 140, 1))),
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
                            fontSize: 20,
                            color: Color.fromRGBO(57, 38, 140, 1))),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Password',
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(57, 38, 140, 1),
                                  width: 3.0))
                          // fillColor: Colors.purple,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  Get.offAndToNamed(Routes.HOME);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(
                      57, 38, 140, 1), // background (button) color
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 43, vertical: 25),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(57, 38, 140, 1)),
                  ),
                  InkWell(
                      onTap: () {
                        // Get.to(const SignupScreen());
                        Get.offAndToNamed(Routes.SIGNUP);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(57, 38, 140, 1)),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
