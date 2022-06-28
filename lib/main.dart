import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp>{

  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  // This widget is the root of  app.
  @override
  Widget build(BuildContext context) {
    var questions = [
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


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text('Score Pack')
        ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]['questionText'] as String
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
                 return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      )
    );
  }
}
