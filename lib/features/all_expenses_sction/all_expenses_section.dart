import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_images.dart';
import 'package:test_app/models/financial_operation_model.dart';

import 'all_expenses_header.dart';
import 'financial_operation_widget.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: Row(
              children: [
                FinancialOperationWidget(
                  operationModel: FinancialOperationModel(
                      cash: r'$20,511',
                      date: "April 2024",
                      icon: AppImages.income,
                      type: "Income"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
