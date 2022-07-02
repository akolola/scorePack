import 'package:flutter/material.dart';
import 'package:hackaburg/mappicker.dart';


class Start extends StatelessWidget {

  const Start({super.key});

  @override
  Widget build(BuildContext context) {

    return  Column(
      children: <Widget>[
        const Text(
          'Choose new activity',
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlinedButton(
              onPressed: null,
              child: const Text('Stadium track'),
            ),
            OutlinedButton(
            onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPicker()),
                  );
                },
              child: Text('City maps'),
            )
          ],
        ),
      ],
    );
  }

}
