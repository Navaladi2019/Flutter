import 'package:flutter/material.dart';
import 'package:myapp/quiz.dart';
import 'package:myapp/result.dart';
import 'Answer.dart';
import 'Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  var _questions = [
    {
      'Question': 'Whats\'s your favourite color?',
      'Answer': [
        {'Text': 'Blue', 'Score': 10},
        {'Text': 'Black', 'Score': 9},
        {'Text': 'Green', 'Score': 8},
        {'Text': 'Red', 'Score': 7}
      ]
    },
    {
      'Question': 'Whats\'s your favourite animal?',
      'Answer': [
        {'Text': 'Dog', 'Score': 10},
        {'Text': 'Cat', 'Score': 9},
        {'Text': 'Tiger', 'Score': 8},
        {'Text': 'Lion', 'Score': 7}
      ]
    },
    {
      'Question': 'Whats\'s your favourite Instructor?',
      'Answer': [
        {'Text': 'Max', 'Score': 10},
        {'Text': 'Tom', 'Score': 9},
        {'Text': 'Nik', 'Score': 8},
        {'Text': 'Hug', 'Score': 7}
      ]
    }
  ];
  int _score = 0;
  void _answerQuestion(int score) {
    _score += score;
    setState(() {
      _questionindex = _questionindex + 1;
    });
  }

  void resetQuiz() {
    _score = 0;
    setState(() {
      _questionindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionindex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionindex: _questionindex,
                )
              : Result(_score, resetQuiz)),
    );
  }
}
