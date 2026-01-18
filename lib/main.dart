import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          title: Text('Dice roller'),
        ),
        body: Container(
          height: double.infinity,   // have container fill entire screen
          width: double.infinity,    // otherwise will shrink to fir its content
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue, // starting color
                Colors.blueGrey, // ending color
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text('Hello World'),
        ),
      ),
    ),
  );
}
