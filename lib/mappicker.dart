import 'package:flutter/material.dart';

class MapPicker extends StatelessWidget {
  const MapPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jogging Maps',
        ),
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            tooltip: 'Open navigation menu',
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Favorite',
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    '1st',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    '2nd',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    '3rd',
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          'Here you can choose the track',
        ),
      ),
    );
  }
}
