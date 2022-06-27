import 'package:flutter/material.dart';

class Question extends StatelessWidget{

  final String qeustionText;

  Question(this.qeustionText);

  @override
  Widget build(BuildContext context){
    return Text(qeustionText);
  }

}
