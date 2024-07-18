import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20)),
          Text('Headset', style: TextStyle(fontSize: 30.0)),
          Padding(padding: EdgeInsets.all(20)),
          Icon(Icons.headset, size: 90.0),
        ],
      ),
    );
  }
}