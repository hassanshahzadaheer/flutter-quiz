import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText = "";

  Question(
    this.questionText,
  );
  
  @override
  Widget build(BuildContext context) {
    return Text(questionText,
    textAlign: TextAlign.center,
    textScaleFactor: 2.0,);
  }
}