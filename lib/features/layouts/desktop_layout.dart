import 'package:flutter/material.dart';
import 'package:test_app/features/drawer/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
        ],
      ),
    );
  }
}
