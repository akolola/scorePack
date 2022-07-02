import 'package:flutter/material.dart';
import 'package:hackaburg/mappicker.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Choose new activity',
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                icon: Image.asset('images/field.png'),
                iconSize: 100,
                onPressed: () {}),
            IconButton(
              icon: Image.asset('images/buildings.png'),
              iconSize: 100,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPicker()),
                );
              },
            )
          ],
        ),
      ],
    );
  }
}
