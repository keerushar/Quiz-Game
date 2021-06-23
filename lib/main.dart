import 'package:flutter/material.dart';
import './answer.dart';
import './home.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  final ques = const [
    {
      'questionText': 'What is the full form of WWW ?',
      'answers': [
        'World Web Wide',
        'World Wide Web',
        'Web World Wide',
        'Wide World Web'
      ],
    },
    {
      'questionText': 'Capital of Nepal ?',
      'answers': ['Baglung', 'Kathmandu', 'Pokhara', 'Biratnagar'],
    },
    {
      'questionText': 'City of Suspension bridge ?',
      'answers': ['Parbat', 'Myagdi', 'Baglung', 'Mustang'],
    },
    {
      'questionText': 'Where do you live?',
      'answers': ['Lalitpur', 'Kathmandu', 'Baglung', 'Pokhara'],
    },
  ];

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
    

  }

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < ques.length) {
      print('we have more questions');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Game'),
        ),
        body: questionIndex < ques.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                ques: ques,
              )
            : Result(resetQuiz),
      ),
    );
  }
}
