import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/core/utils/app_colors.dart';
import 'package:test_app/core/utils/app_styles.dart';
import 'package:test_app/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel user;

  const UserInfoListTile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.liteGrey,
      elevation: 0,
        child: ListTile(
      leading: SvgPicture.asset(
        user.avatar,
      ),
      title: Text(
        user.name,
        style: AppStyles.styleSemiBold16,
      ),
      subtitle: Text(
        user.email,
        style: AppStyles.styleRegular12,
      ),
    ));
  }
}
