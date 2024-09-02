import 'package:flutter/material.dart';


import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
import '../../models/financial_operation_model.dart';
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
         border: Border.all(color: AppColors.secondaryColor),
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
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              operationModel.type,
              style: AppStyles.styleSemiBold16(context).copyWith(color: AppColors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              operationModel.date,
              style: AppStyles.styleRegular14(context).copyWith(color: AppColors.liteGrey),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,  
            child: Text(
              operationModel.cash,
              style: AppStyles.styleSemiBold24(context).copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
