import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Run',
        ),
      ),
      body: Center(
        child: Text(
          'Map filler',
        ),
      ),
    );
  }
}
