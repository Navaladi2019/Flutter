import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  String get resultPharse {
    return 'You did it!.Your Score is ${score}.';
  }

  Result(this.score, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultPharse,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text('Reset Quiz'),
          textColor: Colors.blue,
        )
      ],
    );
  }
}
