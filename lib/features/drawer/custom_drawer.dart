import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_images.dart';
import 'package:test_app/features/drawer/inactive_drawer_item.dart';
import 'package:test_app/models/drawer_item_model.dart';

import '../../core/constants.dart';
import '../../core/utils/app_colors.dart';
import '../shared_components/user_info_list_tile.dart';
import 'dawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28, right: 20, bottom: 48),
      color: AppColors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: UserInfoListTile(user: Constants.users[0])),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawerItemsListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                InactiveDrawerItem(
                    model: DrawerItemModel(
                        iconPath: AppImages.setting, title: "Setting system")),
                InactiveDrawerItem(
                    model: DrawerItemModel(
                        iconPath: AppImages.logout, title: "Logout account")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
