import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'transaction_history_item.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => TransactionHistoryItem(
          transactionModel: Constants.transaction[index]),
      separatorBuilder: (context, index) {
        if (index == Constants.transaction.length - 1) {
          return const SizedBox();
        } else {
          return const SizedBox(
            height: 12,
          );
        }
      },
      itemCount: Constants.transaction.length,
    );
  }
}
