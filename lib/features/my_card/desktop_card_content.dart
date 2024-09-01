

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_images.dart';
import '../../core/utils/app_styles.dart';

class DesktopCardContent extends StatelessWidget {
  const DesktopCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text(
            'Name card',
            style: AppStyles.styleRegular16(context)
                .copyWith(color: AppColors.white),
          ),
          subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                'Amr Abdelsattar Mohamed',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: AppStyles.styleMedium20(context)
                    .copyWith(color: AppColors.white),
              )),
          trailing: SvgPicture.asset(AppImages.galleryIcon),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: AppColors.white),
              ),
              Text(
                '12/20 - 124',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
