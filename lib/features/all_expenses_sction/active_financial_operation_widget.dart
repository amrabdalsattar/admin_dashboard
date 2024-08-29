import 'package:flutter/material.dart';
import 'package:test_app/models/financial_operation_model.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
import 'financial_opearion_header.dart';

class ActiveFinancialOperationWidget extends StatelessWidget {
  final FinancialOperationModel operationModel;
  const ActiveFinancialOperationWidget(
      {super.key, required this.operationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FinancialOpearionHeader(
            icon: operationModel.icon,
            isActive: true,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            operationModel.type,
            style: AppStyles.styleSemiBold16.copyWith(color: AppColors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            operationModel.date,
            style: AppStyles.styleRegular14.copyWith(color: AppColors.liteGrey),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            operationModel.cash,
            style: AppStyles.styleSemiBold24.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
