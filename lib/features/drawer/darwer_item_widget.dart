import 'package:flutter/material.dart';
import 'package:test_app/features/drawer/inactive_drawer_item.dart';
import 'package:test_app/models/drawer_item_model.dart';

import 'active_drawer_item.dart';

class DarwerItemWidget extends StatelessWidget {
  final DrawerItemModel model;
  final bool isActive;
  const DarwerItemWidget(
      {super.key, required this.model, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(model: model) : InactiveDrawerItem(model: model);
  }
}
