import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Constants.incomeDetails.length,
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          ItemDetails(itemDetailsModel: Constants.incomeDetails[index]),
    );
  }
}
