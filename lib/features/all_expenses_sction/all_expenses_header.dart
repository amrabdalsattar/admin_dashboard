import 'package:flutter/material.dart';

import '../../core/utils/app_styles.dart';
import 'period_drop_down.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        PeriodDropDown()
      ],
    );
  }
}
