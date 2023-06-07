import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 26, 3, 233),
          Color.fromARGB(255, 59, 134, 255)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dice-1.png'),
          TextButton(
            child: Text('Roll Dice'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
