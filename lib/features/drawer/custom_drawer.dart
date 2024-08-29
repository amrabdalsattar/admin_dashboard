import 'package:flutter/material.dart';


import '../../core/utils/app_colors.dart';
import '../../core/utils/app_images.dart';
import '../../models/drawer_item_model.dart';
import '../../models/user_info_model.dart';
import '../shared_components/user_info_list_tile.dart';
import 'dawer_items_list_view.dart';
import 'inactive_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28, right: 20, bottom: 48),
      color: AppColors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: UserInfoListTile(
                  user: UserInfoModel(
                      avatar: AppImages.avatars[0],
                      name: "Amr Abdelsattar",
                      email: "amrmmohamed00@gmail.com "))),
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
