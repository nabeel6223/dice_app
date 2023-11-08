import "package:flutter/material.dart";
import "package:sample/dice_roller.dart";
// import "package:sample/styled_text.dart";

// var startAlignment = Alignment.topRight;
var endAlignment = Alignment.bottomRight;

Alignment? startAlignment;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradient,
      {super.key}); //DefaultConstructorFunction

// Additonal Custructor Function
  // const GradientContainer.purple({super.key})
  //     : gradient = const [
  //         Color.fromARGB(255, 0, 0, 0),
  //         Color.fromARGB(255, 255, 255, 255)
  //       ];
  // Use GradientContainer.purple() while using to use this custructor

  final List<Color> gradient;

  @override
  Widget build(context) {
    startAlignment = Alignment.topLeft;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: gradient, begin: startAlignment!, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
