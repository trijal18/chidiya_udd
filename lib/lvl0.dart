import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

var birds = {
  'chidiya': true,
  'bus': false,
  'crow': true,
  'chicken': false,
  'duck': false,
  'emu': false,
  'falcon': true,
  'helicopter': true,
  'owl': true,
  'parrot': true,
  'peacock': true,
  'penguin': false,
  'plane': true,
};

class LevelZero extends StatefulWidget {
  const LevelZero({super.key});

  @override
  State<LevelZero> createState() {
    return _LevelZero();
  }
}

class _LevelZero extends State<LevelZero> {
  var bird = 'chidiya';

  void RandBird() {
    setState(() {
      bird = birds.keys.elementAt(Random().nextInt(birds.length));
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Text(
          bird,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/images/$bird.jpeg',
          width: 200,
          height: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: RandBird,
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Custom button color
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            fixedSize: Size(100, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadowColor: Colors.blue.withOpacity(0.5),
            elevation: 5,
          ),
          child: const Text(
            "Udd",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
