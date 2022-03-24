import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  // createing custom button design
  final ButtonStyle flatButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.yellow,
    primary: Colors.purpleAccent,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 30, right: 30),
      child: TextButton(
        style: flatButtonStyle,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}