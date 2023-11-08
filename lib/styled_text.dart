import 'package:flutter/material.dart';

class styledText extends StatelessWidget {
  const styledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Center(
      child: Text(text,
          style: const TextStyle(
            color: Color.fromARGB(255, 35, 19, 18),
            fontSize: 30,
          )),
    );
  }
}
