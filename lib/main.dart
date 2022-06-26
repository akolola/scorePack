import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of  app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title : Text('Score Pack')
          ),
        body: Column(
          children: [
            Text('The question'),
            ElevatedButton (
              child: Text('Answer1'),
              onPressed: null,
            ),
            ElevatedButton (
              child: Text('Answer2'),
              onPressed: null,
            ),
            ElevatedButton (
              child: Text('Answer3'),
              onPressed: null,
            )
          ],
        ),
      )
    );
  }
}
