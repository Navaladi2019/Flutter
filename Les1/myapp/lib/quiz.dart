import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.questionindex,
      @required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionindex]['Question']),

        ///... is a spread operator (which append the list item to another list)
        ...(questions[questionindex]['Answer'] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(() => answerQuestion(answer['Score']), answer['Text']))

        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
      ],
    );
  }
}
