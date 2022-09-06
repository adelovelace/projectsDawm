import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                margin: const EdgeInsets.only(top: 100),
                alignment: Alignment.center,
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 36,
                    color: Color.fromRGBO(57, 38, 140, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: 300,
                height: 700,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                alignment: Alignment.centerLeft,
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
                            fontSize: 20,
                            color: Color.fromRGBO(57, 38, 140, 1))),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color.fromRGBO(57, 38, 140, 1)),
                height: 50,
                width: 86,
                child: const Center(
                  child: Text('Sign Up', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
