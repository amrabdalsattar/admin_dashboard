import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_styles.dart';
import '../../models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel user;

  const UserInfoListTile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
          color: AppColors.liteGrey,
          elevation: 0,
          child: ListTile(
              leading: SvgPicture.asset(
                user.avatar,
              ),
              title: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  user.name,
                  style: AppStyles.styleSemiBold16(context),
                ),
              ),
              subtitle: FittedBox(
              fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  user.email,
                  style: AppStyles.styleRegular12(context),
                ),
              ))),
    );
  }
}
