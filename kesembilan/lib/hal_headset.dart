import 'package:flutter/material.dart';

class Headset extends StatelessWidget {
  const Headset({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(20)),
          const Text('Headset', style: TextStyle(fontSize: 30.0)),
          const Padding(padding: EdgeInsets.all(20)),
          Image.asset('img/headset.png', width: 300)
        ],
      ),
    );
  }
}