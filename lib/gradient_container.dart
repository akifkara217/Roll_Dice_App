import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.selectedColor1, this.selectedColor2,
      {super.key});
  const GradientContainer.backgroundColor({super.key})
      : selectedColor1 = Colors.blueAccent,
        selectedColor2 = const Color.fromARGB(255, 208, 35, 197);

  final Color selectedColor1;
  final Color selectedColor2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [selectedColor1, selectedColor2],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
