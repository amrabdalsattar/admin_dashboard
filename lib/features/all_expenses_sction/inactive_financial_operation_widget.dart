import 'package:flutter/material.dart';


import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
import '../../models/financial_operation_model.dart';
import 'financial_opearion_header.dart';

class InactiveFinancialOperationWidget extends StatelessWidget {
  final FinancialOperationModel operationModel;
  const InactiveFinancialOperationWidget({super.key, required this.operationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.bordersColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FinancialOpearionHeader(
            icon: operationModel.icon,
            isActive: false,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            operationModel.type,
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            operationModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            operationModel.cash,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}