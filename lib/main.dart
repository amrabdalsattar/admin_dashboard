import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Test App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.height}");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          log("${constraints.maxWidth}");
          if (constraints.maxWidth <= 572) {
            return const MobileLayout();
          } else {
            return const TabletLayout();
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          color: Colors.green,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Details(num: index + 1);
              }));
            },
            title: Text("${index + 1}"),
          ),
        ));
  }
}

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                color: Colors.green,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  onTap: () {
                    num = index + 1;
                    setState(() {});
                  },
                  title: Text("${index + 1}"),
                ),
              )),
        ),
        Expanded(child: Center(child: Text("$num")))
      ],
    );
  }
}

class Details extends StatelessWidget {
  final int num;

  const Details({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "$num",
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
