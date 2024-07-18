import 'package:flutter/material.dart';

import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as smartphone;

void main() {
  runApp(const MaterialApp(
    title: 'Latihan Kesembilan',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Daftar Elektronik')
        ),
        body: const TabBarView(
          children: <Widget>[
            komputer.Komputer(),
            radio.Radio(),
            headset.Headset(),
            smartphone.Smartphone(),
          ],
        ),
        bottomNavigationBar: const Material(
          color: Colors.amber,
          child: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.computer)),
              Tab(icon: Icon(Icons.radio)),
              Tab(icon: Icon(Icons.headset)),
              Tab(icon: Icon(Icons.smartphone)),
            ],
          ),
        ),
      ),
    );
  }
}