// dice_container.dart
import 'package:flutter/material.dart';

class DiceContainer extends StatelessWidget {
  // super.key is a named parameter and
  // is required for all widgets
  const DiceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue, // starting color
            Colors.blueGrey, // ending color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}
