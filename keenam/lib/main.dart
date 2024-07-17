import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Card and Parsing",
    home: MyPage(),
  ));
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text("Card and Parsing",
            style: TextStyle(color: Colors.white)),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CardComponent(
              icon: Icons.home, colorIcon: Colors.black, text: "Home"),
          CardComponent(
              icon: Icons.favorite, colorIcon: Colors.red, text: "Favorites"),
          CardComponent(
              icon: Icons.place, colorIcon: Colors.lightBlue, text: "Places"),
          CardComponent(
              icon: Icons.settings, colorIcon: Colors.black, text: "Settings"),
        ],
      ),
    );
  }
}

class CardComponent extends StatelessWidget {
  const CardComponent(
      {super.key,
      required this.icon,
      required this.colorIcon,
      required this.text});

  final IconData icon;
  final Color colorIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: <Widget>[
            Icon(icon, size: 50, color: colorIcon),
            Text(text, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
