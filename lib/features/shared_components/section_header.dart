import 'package:flutter/material.dart';

import '../../core/utils/app_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final Widget postFixWidget;
  const SectionHeader({super.key, required this.title, required this.postFixWidget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20,
        ),
        postFixWidget
      ],
    );
  }
}