import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(20)),
          const Text('Radio', style: TextStyle(fontSize: 30.0)),
          const Padding(padding: EdgeInsets.all(20)),
          Image.asset('img/radio.png', width: 300)
        ],
      ),
    );
  }
}