import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CustomBackgroundContainer extends StatelessWidget {
  final Widget child;
  final double? padding;
  final bool isFirstInColumn;
  const CustomBackgroundContainer(
      {super.key,
      required this.child,
      this.padding,
      required this.isFirstInColumn});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: isFirstInColumn ? 40 : 24),
      padding: EdgeInsets.all(padding ?? 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
