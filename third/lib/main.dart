import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: PageOne(),
  ));
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      color: Colors.blue[800],
      width: 200,
      height: 100,
      child: const Center(
        child: Icon(Icons.favorite, color: Colors.red, size: 50)
      ),
    )));
  }
}
