import 'package:flutter/material.dart';


import '../../core/utils/app_colors.dart';
import '../../core/utils/app_images.dart';
import 'card_content.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 84 / 43,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AppImages.cardBackground), fit: BoxFit.fill),
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(12)),
            child: const CardContent(),
      ),
    );
  }
}
