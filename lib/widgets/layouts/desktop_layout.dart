import 'package:flutter/material.dart';
import 'package:test_app/widgets/desktop_nav_bar.dart';
import 'package:test_app/widgets/drawer/custom_drawer.dart';
import 'package:test_app/widgets/layouts/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 3, child: CustomDrawer()),
        Expanded(
            flex: 6,
            child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const TabletLayout())),
        const Expanded(flex: 3, child: DesktopNavBar())
      ],
    );
  }
}
