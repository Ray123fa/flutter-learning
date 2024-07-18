import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20)),
          Text('Smartphone', style: TextStyle(fontSize: 30.0)),
          Padding(padding: EdgeInsets.all(20)),
          Icon(Icons.smartphone, size: 90.0),
        ],
      ),
    );
  }
}