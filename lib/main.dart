import 'package:aheer_quiz/result.dart';
import 'package:flutter/material.dart';
import 'package:aheer_quiz/quiz.dart';

void main() => runApp(AheerQuiz());

class AheerQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AheerQuizState();
  }
}

class AheerQuizState extends State<AheerQuiz> {
  var questions = [
    {
      'questionText': 'Which language you like most?',
      'answers': [
        {'option': 'Java', 'score': 30},
        {'option': 'PHP', 'score': 30},
        {'option': 'JS', 'score': 30},
        {'option': 'Dart', 'score': 30},
      ],
    },
  ];
  int _questionIdex = 0;
  int _totalPoints = 0;

  void _nextQuestion(int point) {
    _totalPoints = _totalPoints + point;

    setState(() {
      _questionIdex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("Aheer Quiz App"), backgroundColor: Colors.black),
        body: _questionIdex < questions.length
            ? Quiz(questions, _questionIdex, _nextQuestion)
            : Result(_totalPoints),
      ),
    );
  }
}
