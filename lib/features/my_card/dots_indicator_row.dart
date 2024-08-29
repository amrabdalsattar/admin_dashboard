import 'package:flutter/material.dart';

import 'custom_dot_indicator.dart';

class DotsIndicatorRow extends StatelessWidget {
  final int currentPageIndex;
  const DotsIndicatorRow({super.key, required this.currentPageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3,
          (index) => CustomDotIndicator(isActive: index == currentPageIndex)),
    );
  }
}
