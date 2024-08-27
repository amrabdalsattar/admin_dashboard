import 'package:flutter/material.dart';
import 'package:test_app/features/all_expenses_sction/financial_operation_list.dart';

import '../../core/utils/app_colors.dart';
import 'all_expenses_header.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          FinancialOperationList(),
        ],
      ),
    );
  }
}
