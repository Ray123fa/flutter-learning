import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(20)),
          const Text('Smartphone', style: TextStyle(fontSize: 30.0)),
          const Padding(padding: EdgeInsets.all(20)),
          Image.asset('img/hp.png', width: 300)
        ],
      ),
    );
  }
}