import 'package:flutter/material.dart';
import './question.dart';

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
      'What\'s your fav color?',
      'What\'s your fav animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text('Score Pack')
        ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex],
            ),
            ElevatedButton (
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton (
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton (
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            )
          ],
        ),
      )
    );
  }
}
