import 'package:flutter/material.dart';
import 'dart:math';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue,
          const Color.fromARGB(255, 150, 188, 255)
        ])),
        child: const ImageWidget());
  }
}

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  var noOfImage = 4;
  var randomObj = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dice-$noOfImage.png', width: 200),
          TextButton(
            onPressed: () {
              setState(() {
                noOfImage = randomObj.nextInt(6) + 1; // 1,2,3,4,5,6
              });
              print('fxn called');
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Roll Dice', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
