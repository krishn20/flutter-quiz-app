import 'package:flutter/material.dart';
import 'package:myapp/quiz.dart';
import 'package:myapp/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 6},
        {'text': 'Blue', 'score': 10},
        {'text': 'Yellow', 'score': 8},
        {'text': 'Pink', 'score': 4},
        {'text': 'Green', 'score': 2},
      ]
    },
    {
      'question': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 8},
        {'text': 'Otter', 'score': 6},
        {'text': 'Hamster', 'score': 4},
        {'text': 'Parrot', 'score': 2},
      ]
    },
    {
      'question': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Krishn', 'score': 8},
        {'text': 'Ajay', 'score': 6},
        {'text': 'Jatin', 'score': 4},
        {'text': 'Saksham', 'score': 2},
      ]
    },
  ];

  var questionIndex = 0;
  int totalScore = 0;

  void restartQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void showAnswer(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });

    if (questionIndex < questions.length) {
      print('We have more questions!!');
    } else {
      print('No more questions left!!');
    }

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  questionIndex: questionIndex,
                  showAnswer: showAnswer,
                )
              : Result(totalScore, restartQuiz)),
    );
  }
}
