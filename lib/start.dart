import 'package:flutter/material.dart';
import 'package:hackaburg/mappicker.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //=== 1. element:  description text.
        Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          child: const Text(
            'Choose activity',
            style: TextStyle(fontSize: 30.0),
          ),
        ),

        //=== 2. element: 2 navigation btns.
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
