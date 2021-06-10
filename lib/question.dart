import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // "final" tells Dart that the value will never change
  // after being initialized in constructor

  Question(this.questionText); // positional argument

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        // by default, text only takes up as much area as it needs
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
