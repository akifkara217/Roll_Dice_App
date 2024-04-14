import 'package:flutter/material.dart';

import "dart:math";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(height: 50),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              
            ),
            padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 89, 8, 170),
            textStyle: const TextStyle(
              fontSize: 25,
            ),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
