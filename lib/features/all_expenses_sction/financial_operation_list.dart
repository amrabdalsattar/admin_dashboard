import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'financial_operation_widget.dart';

class FinancialOperationList extends StatefulWidget {
  const FinancialOperationList({super.key});

  @override
  State<FinancialOperationList> createState() => _FinancialOperationListState();
}

class _FinancialOperationListState extends State<FinancialOperationList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            Constants.financialOperationModels.asMap().entries.map((model) {
      int index = model.key;
      var item = model.value;

      return Expanded(
        child: Padding(
          padding: index == 1
              ? const EdgeInsets.symmetric(horizontal: 12)
              : EdgeInsets.zero,
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: FinancialOperationWidget(
              operationModel: item,
              isActive: index == currentIndex,
            ),
          ),
        ),
      );
    }).toList());
  }
}
