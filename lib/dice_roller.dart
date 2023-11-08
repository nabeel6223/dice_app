import 'package:flutter/material.dart';
import 'package:sample/styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice() {
    Random random = Random();
    int randomNumber = random.nextInt(6) + 1;
    String diceString = 'assets/images/dice-$randomNumber.png';
    setState(() {
      activeDiceImage = diceString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const styledText("Hello Hexagn"),
        const SizedBox(
          height: 20,
        ),
        Image.asset(activeDiceImage, width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll"),
        )
      ],
    );
  }
}
