import 'package:flutter/material.dart';

import 'features/layouts/desktop_layout.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DesktopLayout(),
    );
  }
}
