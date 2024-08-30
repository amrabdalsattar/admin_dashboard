import 'package:flutter/material.dart';

import '../shared_components/custom_background_container.dart';
import '../shared_components/period_drop_down.dart';
import '../shared_components/section_header.dart';
import 'financial_operation_list.dart';


class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(

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
