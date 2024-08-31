import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
import '../shared_components/section_header.dart';
import 'transaction_history_list.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Transaction History',
          postFixWidget: Text(
            'See all',
            style: AppStyles.styleMedium16
                .copyWith(color: AppColors.secondaryColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 16),
          child: Text(
            '13 April 2022',
            style: AppStyles.styleMedium16.copyWith(color: AppColors.grey),
          ),
        ),
        const TransactionHistoryList(),
      ],
    );
  }
}
