import 'package:flutter/material.dart';
import 'package:test_app/features/all_expenses_sction/financial_operation_list.dart';
import 'package:test_app/features/shared_components/custom_background_container.dart';
import 'package:test_app/features/shared_components/period_drop_down.dart';
import 'package:test_app/features/shared_components/section_header.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      isFirstInColumn: true,
      child: Column(
        children: [
          SectionHeader(title: "All Expenese", postFixWidget: PeriodDropDown()),
          SizedBox(
            height: 16,
          ),
          FinancialOperationList(),
        ],
      ),
    );
  }
}
