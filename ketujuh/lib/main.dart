import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Latihan Ketujuh",
    home: const FirstPage(),
    routes: <String, WidgetBuilder>{
      '/FirstPage': (BuildContext context) => const FirstPage(),
      '/SecondPage': (BuildContext context) => const SecondPage(),
    },
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MUSIC"),
      ),
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.headphones_rounded, size: 50),
          onPressed: () {
            Navigator.pushNamed(context, '/SecondPage');
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TES"),
      ),
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.speaker, size: 50, color: Colors.red),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
