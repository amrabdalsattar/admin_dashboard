import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
import '../shared_components/custom_arrow.dart';

class PeriodDropDown extends StatelessWidget {
  const PeriodDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.bordersColor),
        borderRadius: BorderRadius.circular(12)
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Monthly", style: AppStyles.styleMedium16,),
          SizedBox(width: 18,),
          CustomArrow(isDown: true,)
        ],
      ),
    );
  }
}
