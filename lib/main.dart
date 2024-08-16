import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Test App',
      home: MyHomePage(title: 'Test App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              /// if there is area can contains the 400 px the height will be 400,
              /// else the height will change to be flexible
              height: 400,
              color: Colors.cyan,
            ),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 300,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
