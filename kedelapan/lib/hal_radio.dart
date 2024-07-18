import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20)),
          Text('Radio', style: TextStyle(fontSize: 30.0)),
          Padding(padding: EdgeInsets.all(20)),
          Icon(Icons.radio, size: 90.0),
        ],
      ),
    );
  }
}