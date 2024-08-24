import 'package:flutter/material.dart';

import 'package:test_app/core/utils/app_colors.dart';

import 'package:test_app/features/shared_components/user_info_list_tile.dart';

import '../../core/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        children: [UserInfoListTile(user: Constants.users[0],)],
      ),
    );
  }
}
