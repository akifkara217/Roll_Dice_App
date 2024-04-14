import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 40,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(255, 246, 255, 0)),
    );
  }
}
