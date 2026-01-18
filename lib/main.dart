// main.dart
import 'package:dice_roll_in_class/dice_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: const Text('Dice roller'),
        ),
        body: const DiceContainer(),
      ),
    ),
  );
}
