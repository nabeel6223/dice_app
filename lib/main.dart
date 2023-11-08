import 'package:flutter/material.dart';
import 'package:sample/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.deepOrangeAccent,
        body: GradientContainer(
          [Color.fromARGB(255, 208, 73, 73), Color.fromARGB(255, 57, 54, 54)],
        ),
      ),
    ),
  );
}
