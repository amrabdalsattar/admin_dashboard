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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              currentIndex = 0;
              setState(() {});
            },
            child: FinancialOperationWidget(
              operationModel: Constants.financialOperationModels[0],
              isActive: 0 == currentIndex,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              currentIndex = 1;
              setState(() {});
            },
            child: FinancialOperationWidget(
              operationModel: Constants.financialOperationModels[1],
              isActive: 1 == currentIndex,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              currentIndex = 2;
              setState(() {});
            },
            child: FinancialOperationWidget(
              operationModel: Constants.financialOperationModels[2],
              isActive: 2 == currentIndex,
            ),
          ),
        ),
      ],
    );
  }
}
