import 'package:flutter/material.dart';
import 'package:test_app/models/drawer_option_model.dart';

class DrawerOption extends StatelessWidget {
  final DrawerOptionModel drawerOptionModel;
  const DrawerOption({
    super.key, required this.drawerOptionModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: ListTile(
        leading: Icon(drawerOptionModel.icon, color: const Color(0xff727073),),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(drawerOptionModel.title)),
      
      ),
    );
  }
}
