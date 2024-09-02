import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
import '../../models/drawer_item_model.dart';

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.model,
  });

  final DrawerItemModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 20),
      leading: SvgPicture.asset(model.iconPath),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.topStart,
        child: Text(model.title, style: AppStyles.styleBold16(context))),
      trailing: Container(
        width: 3.27,
        height: MediaQuery.sizeOf(context).height,
        color: AppColors.secondaryColor,
      ),
    );
  }
}
