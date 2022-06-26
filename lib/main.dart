import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<MyApp>{

  var questionIndex = 0;

  void answerQuestion(){
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
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
            Text(
                questions[questionIndex],
            ),
            ElevatedButton (
              child: Text('Answer1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton (
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton (
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            )
          ],
        ),
      )
    );
  }
}
