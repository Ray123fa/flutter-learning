import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
  const Komputer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(20)),
          const Text('Komputer', style: TextStyle(fontSize: 30.0)),
          const Padding(padding: EdgeInsets.all(20)),
          Image.asset('img/komputer.png', width: 300)
        ],
      ),
    );
  }
}