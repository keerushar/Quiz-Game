import 'package:flutter/material.dart';
import './answer.dart';
import './home.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.ques, 
    @required this.answerQuestion, 
    @required this.questionIndex,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Home(
          ques[questionIndex]['questionText'],
        ),
        ...(ques[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
