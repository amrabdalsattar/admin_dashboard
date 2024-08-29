import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_images.dart';
import '../../core/utils/app_styles.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(top: 20, left: 31, right: 45),
          minVerticalPadding: 0,
          title: Text(
            'Name card',
            style: AppStyles.styleRegular16.copyWith(color: AppColors.white),
          ),
          subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                'Amr Abdelsattar Mohamed',
                style: AppStyles.styleMeduim20.copyWith(color: AppColors.white),
              )),
          trailing: SvgPicture.asset(AppImages.galleryIcon),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 26, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style:
                    AppStyles.styleSemiBold24.copyWith(color: AppColors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '12/20 - 124',
                style:
                    AppStyles.styleRegular16.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
