import 'package:flutter/material.dart';
import 'package:test_app/widgets/layouts/adaptive_layout.dart';
import 'package:test_app/widgets/layouts/desktop_layout.dart';
import 'package:test_app/widgets/layouts/mobile_layout.dart';
import 'package:test_app/widgets/layouts/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      color: const Color(0xffDBDBDB),
      child: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context)=> const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
