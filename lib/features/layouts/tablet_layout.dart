import 'package:flutter/material.dart';

import '../drawer/custom_drawer.dart';
import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: Padding(
                padding: EdgeInsets.only(top: 40), child: MobileLayout())),
      ],
    );
  }
}
