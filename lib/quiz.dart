import 'package:flutter/material.dart';
import 'package:aheer_quiz/questions.dart';
import 'package:aheer_quiz/answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> getQuestions;
  final int _questionIndex;
  final Function getNextQuestionText;

  Quiz(this.getQuestions, this._questionIndex, this.getNextQuestionText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child:
              Question(getQuestions[_questionIndex]['questionText'] as String),
        ),
        ...(getQuestions[_questionIndex]['answers']
                as List<Map<String,Object>>)
            .map((options) {
          return Answer(
              () => getNextQuestionText(options['score']), options['option'].toString());
        }).toList(),
      ],
    );
  }
}
