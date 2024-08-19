import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_list_view.dart';
import 'package:test_app/widgets/custom_tablet_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      color: const Color(0xffDBDBDB),
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomTabletList(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          CustomListView()
        ],
      ),
    );
  }
}
