import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'transaction_history_item.dart';

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Constants.transaction
          .map((e) => Padding(
            padding: const EdgeInsets.only(top: 12),
            child: TransactionHistoryItem(transactionModel: e)))
          .toList(),
    );
  }
}
