import 'package:flutter/material.dart';
import 'package:test_app/features/layouts/adaptive_layout.dart';
import 'package:test_app/features/layouts/desktop_layout.dart';
import 'package:test_app/features/layouts/mobile_layout.dart';
import 'package:test_app/features/layouts/tablet_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
          desktopLayout: (context) => const DesktopLayout()
          ),
    );
  }
}
