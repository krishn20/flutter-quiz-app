import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function showAnswer;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.showAnswer});

  

  //***************************************************************//
  //******************** Widgets Build ****************************//
  //***************************************************************//

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => showAnswer(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
