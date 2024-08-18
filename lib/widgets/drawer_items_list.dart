import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/models/drawer_option_model.dart';
import 'package:test_app/widgets/drawer_option_item.dart';

class DrawerItemsList extends StatelessWidget {
  const DrawerItemsList({
    super.key,
  });

  static const List<DrawerOptionModel> drawerOptionModels = [
    DrawerOptionModel(title: 'D A S H B O A R D', icon: FontAwesomeIcons.house),
    DrawerOptionModel(title: 'S E T T I N G S', icon: Icons.settings),
    DrawerOptionModel(
        title: 'A B O U T', icon: FontAwesomeIcons.circleExclamation),
    DrawerOptionModel(title: 'L O G O U T', icon: Icons.logout),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerOptionModels.length,
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          DrawerOption(drawerOptionModel: drawerOptionModels[index]),
    );
  }
}
