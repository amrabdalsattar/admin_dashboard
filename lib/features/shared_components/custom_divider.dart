import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  final double height;
  const CustomDivider({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Divider(color: AppColors.bordersColor, height: height);
  }
}
