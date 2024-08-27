import 'package:flutter/material.dart';
import 'package:test_app/features/all_expenses_sction/active_financial_operation_widget.dart';
import 'package:test_app/features/all_expenses_sction/inactive_financial_operation_widget.dart';
import 'package:test_app/models/financial_operation_model.dart';

class FinancialOperationWidget extends StatelessWidget {
  final FinancialOperationModel operationModel;
  final bool isActive;

  const FinancialOperationWidget({
    super.key,
    required this.operationModel,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: isActive
          ? ActiveFinancialOperationWidget(
              operationModel: operationModel)
          : InactiveFinancialOperationWidget(
              operationModel: operationModel),
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
