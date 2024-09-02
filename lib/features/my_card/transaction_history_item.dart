import 'package:flutter/material.dart';


import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
import '../../models/transaction_model.dart';


class TransactionHistoryItem extends StatelessWidget {
  final TransactionModel transactionModel;
  const TransactionHistoryItem({super.key, required this.transactionModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.liteGrey,
      elevation: 0,
      child: ListTile(
        title: Text(transactionModel.title, style: AppStyles.styleSemiBold16(context),),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(transactionModel.date, style: AppStyles.styleRegular16(context).copyWith(color: AppColors.grey),)),
        trailing: Text('\$${transactionModel.cash}', style: AppStyles.styleSemiBold20(context).copyWith(
          color: transactionModel.isWithdrawal ? AppColors.withdrawalColor : AppColors.depositeColor
        ),),
      ),
    );
  }
}