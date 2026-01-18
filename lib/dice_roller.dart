import 'dart:math' hide log;

import 'package:flutter/material.dart';
import 'dart:developer';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

final rng = Random();

class _DiceRollerState extends State<DiceRoller> {

  var currImage1 = 'assets/images/dice-1.png';
  var currImage2 = 'assets/images/dice-1.png';
  
  int counter = 0;
  var r1 = 1;
  var r2 = 1;
  var output = '';

  void rollDice() {
    r1 = rng.nextInt(6) + 1;
    r2 = rng.nextInt(6) + 1;
    counter++;
    output += 'Roll $counter: $r1, $r2\n';
    setState(() {
      currImage1 = 'assets/images/dice-$r1.png';
      currImage2 = 'assets/images/dice-$r2.png';
    });    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              currImage1,
              width: 150,
            ),
            Image.asset(
              currImage2,
              width: 150,
            ),
          ],
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.grey[200],
            backgroundColor: Colors.blue,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Roll'),
        ),
        const SizedBox(height: 40),
        Container(
          height: 150,
          width: 300,
          color: Colors.grey[200],
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text(output)
            ),
        )
      ],
    );
  }
}
