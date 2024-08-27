import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/core/utils/app_colors.dart';
import 'package:test_app/core/utils/app_images.dart';

class FinancialOpearionHeader extends StatelessWidget {
  final String icon;
  final bool isActive;
  const FinancialOpearionHeader(
      {super.key, required this.icon, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.all(14),
            decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: isActive ? Colors.white.withOpacity(0.10000000149011612) : AppColors.liteGrey),
            child: SvgPicture.asset(
              icon,
              colorFilter: ColorFilter.mode(
                  isActive ? AppColors.white : AppColors.secondaryColor,
                  BlendMode.srcIn),
            )),
        SvgPicture.asset(AppImages.arrow, colorFilter: ColorFilter.mode(
                  isActive ? AppColors.white : AppColors.primaryColor,
                  BlendMode.srcIn),),
      ],
    );
  }
}
