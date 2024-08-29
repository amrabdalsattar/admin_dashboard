import 'package:flutter/material.dart';

import '../../models/financial_operation_model.dart';
import 'active_financial_operation_widget.dart';
import 'inactive_financial_operation_widget.dart';


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
