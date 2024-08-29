import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  final bool isActive;
  const CustomDotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isActive ? 32 : 8,
        height: 8,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: isActive
                ? AppColors.secondaryColor
                : AppColors.inactiveIndicatorColor),
      ),
    );
  }
}
