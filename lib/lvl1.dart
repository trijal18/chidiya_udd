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

class LevelOne extends StatefulWidget {
  const LevelOne({super.key});

  @override
  State<LevelOne> createState() {
    return _LevelOne();
  }
}

class _LevelOne extends State<LevelOne> {
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (checkBird(bird, "udd") == true) {
                  RandBird();
                } else {
                  Navigator.pop(context);
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Custom button color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                fixedSize: Size(70, 30),
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
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (checkBird(bird, "na") == true) {
                  RandBird();
                } else {
                  Navigator.pop(context);
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Custom button color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                fixedSize: Size(70, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadowColor: Colors.blue.withOpacity(0.5),
                elevation: 5,
              ),
              child: const Text(
                "Na",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

bool checkBird(bird, ss) {
  if (ss == "udd" && birds[bird] == true) {
    return true;
  } else if (ss == "udd" && birds[bird] == false) {
    return false;
  } else if (ss == "na" && birds[bird] == false) {
    return true;
  } else if (ss == "na" && birds[bird] == true) {
    return false;
  }
  return true;
}
