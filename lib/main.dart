import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer.backgroundColor(),
    ),
  ));
}
