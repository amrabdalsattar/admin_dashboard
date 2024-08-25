import 'package:flutter/material.dart';
import 'package:test_app/features/all_expenses_sction/financial_opearion_header.dart';
import 'package:test_app/models/financial_operation_model.dart';

import '../../core/utils/app_colors.dart';

class FinancialOperationWidget extends StatelessWidget {
  final FinancialOperationModel operationModel;
  const FinancialOperationWidget({
    super.key, required this.operationModel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.bordersColor)),
            child:  Column(
              children: [
                FinancialOpearionHeader(icon: operationModel.icon,)
              ],
            ),
      ),
    );
  }
}
