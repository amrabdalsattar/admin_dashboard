import 'package:flutter/material.dart';

import '../../core/constants.dart';
import 'darwer_item_widget.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

int activeIndex = 0;

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: Constants.drawerItemModels.length,
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                activeIndex = index;
                setState(() {});
              }
            },
            child: DarwerItemWidget(
              model: Constants.drawerItemModels[index],
              isActive: activeIndex == index,
            )));
  }
}
