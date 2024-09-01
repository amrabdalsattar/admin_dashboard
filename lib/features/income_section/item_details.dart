import 'package:flutter/material.dart';

import '../../core/utils/app_styles.dart';
import '../../models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  final ItemDetailsModel itemDetailsModel;
  const ItemDetails({super.key, required this.itemDetailsModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetailsModel.color,
        ),
        width: 12,
        height: 12,
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.percentage,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
