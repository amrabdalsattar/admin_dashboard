import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_images.dart';

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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60, maxHeight: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                  decoration: ShapeDecoration(
                      shape: const OvalBorder(),
                      color: isActive
                          ? Colors.white.withOpacity(0.10000000149011612)
                          : AppColors.liteGrey),
                  child: Center(
                    child: SvgPicture.asset(
                      icon,
                      colorFilter: ColorFilter.mode(
                          isActive ? AppColors.white : AppColors.secondaryColor,
                          BlendMode.srcIn),
                    ),
                  )),
            ),
          ),
        ),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: SvgPicture.asset(
              AppImages.arrow,
              colorFilter: ColorFilter.mode(
                  isActive ? AppColors.white : AppColors.primaryColor,
                  BlendMode.srcIn),
            ),
          ),
        ),
      ],
    );
  }
}
