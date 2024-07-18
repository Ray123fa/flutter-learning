import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Latihan ke-12',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String teks = "";
  TextEditingController controller = TextEditingController();
  TextEditingController controllerAlert = TextEditingController();
  TextEditingController controllerSnackbar = TextEditingController();

  void _alertdialog(String msg) {
    if (msg.isEmpty) return;

    AlertDialog alert = AlertDialog(
      content: Text(msg, style: const TextStyle(fontSize: 18)),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: const Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  void _snackbar(String msg) {
    if (msg.isEmpty) return;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg, style: const TextStyle(fontSize: 18)),
      duration: const Duration(seconds: 3),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Latihan ke-12'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: 'Tulis di sini...'),
            onSubmitted: (String str) {
              setState(() {
                teks = '$str\n$teks';
                controller.clear();
              });
            },
          ),
          Text(teks, style: const TextStyle(fontSize: 18)),
          TextField(
            controller: controllerAlert,
            decoration:
                const InputDecoration(hintText: 'Tulis alert di sini...'),
            onSubmitted: (String str) {
              setState(() {
                _alertdialog(str);
                controllerAlert.clear();
              });
            },
          ),
          TextField(
            controller: controllerSnackbar,
            decoration:
                const InputDecoration(hintText: 'Tulis snackbar di sini...'),
            onSubmitted: (String str) {
              setState(() {
                _snackbar(str);
                controllerSnackbar.clear();
              });
            },
          ),
        ],
      ),
    );
  }
}
