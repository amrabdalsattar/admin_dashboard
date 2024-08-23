import 'package:flutter/material.dart';
import 'package:test_app/responsive_text_functions.dart';

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
      home: MyHomePage(title: 'Responsive Text'),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Text widget",
            style: TextStyle(
                fontSize: getResponsiveFontSize(fontSize: 16, context)),
          ),
           Text(
              "This is bodyy text. It should  be responsive to the screen size",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(fontSize: 16, context))),
        ],
      ),
    );
  }
}
