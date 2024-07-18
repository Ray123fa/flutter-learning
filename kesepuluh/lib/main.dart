import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Latihan Kesepuluh',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('List View'),
      ),
      body: ListView(
        children: const [
          ListComponent(picture: AssetImage('img/html.png'), title: 'HTML'),
          ListComponent(picture: AssetImage('img/css.png'), title: 'CSS'),
          ListComponent(picture: AssetImage('img/js.png'), title: 'JS'),
        ],
      ),
    );
  }
}

class ListComponent extends StatelessWidget {
  const ListComponent({super.key, required this.picture, required this.title});

  final ImageProvider picture;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Image(
              image: picture,
              width: 250,
            ),
            Text(title, style: const TextStyle(fontSize: 30))
          ],
        ),
      ),
    );
  }
}
