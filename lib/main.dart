import 'package:flutter/material.dart';
import 'package:hackaburg/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Whats your fav color?',
      'answers': ['Black', 'White', 'Red', 'Green'],
    },
    {
      'questionText': 'Whats your fav animal?',
      'answers': ['Elephant', 'Lion', 'Sheep', 'Snake'],
    },
    {
      'questionText': 'Whats Your favorite instructor?',
      'answers': ['MAX', 'Ben', 'Lee', 'Gwen'],
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions.');
    } else {
      print('No have more questions.');
    }
  }

  // This widget is the root of  app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Score Pack')),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(),
    ));
  }
}
