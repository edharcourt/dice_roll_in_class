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

  var currImage = 'assets/images/dice-1.png';
  
  void rollDice() {
    var r = rng.nextInt(6) + 1;
    setState(() {
      currImage = 'assets/images/dice-$r.png';
      log('button pressed');
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currImage,
          width: 200,
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
      ],
    );
  }
}
