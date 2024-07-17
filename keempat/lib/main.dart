import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Flutter Learning",
    home: MyPage(),
  ));
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Center(
            child: Text('My Page', style: TextStyle(color: Colors.white))),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
