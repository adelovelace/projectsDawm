import 'package:flutter/cupertino.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(236, 242, 247, 1),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/pencil-case.png',
        fit: BoxFit.cover,
        height: 200,
        width: 200,
      ),
    );
  }
}
