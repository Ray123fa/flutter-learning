import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MaterialApp(
    title: 'List View',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List dataJson = [];

  Future<void> fetchData() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {"accept": "application/json"});

    setState(() {
      dataJson = json.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Fetch JSON', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: dataJson.length,
        itemBuilder: (context, i) {
          return Card(
              child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dataJson[i]['title'],
                    style: const TextStyle(color: Colors.blue, fontSize: 20)),
                Text(dataJson[i]['body'])
              ],
            ),
          ));
        },
      ),
    );
  }
}
