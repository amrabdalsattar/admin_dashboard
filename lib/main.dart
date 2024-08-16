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
              color: Colors.green,
              child: const FittedBox(
                child: Icon(
                  Icons.settings_input_composite_rounded,
                  size: 200,
                ),
              ),
            ),
          ),
          Expanded(
            child: Flexible(
              child: Container(
                color: Colors.yellow,
                child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Icon(
                    Icons.settings_input_composite_rounded,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.cyan,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
