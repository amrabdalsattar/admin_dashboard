
import 'package:flutter/material.dart';
import 'package:test_app/widgets/custom_grid_view.dart';
import 'package:test_app/widgets/custom_list_view.dart';

class MobileLayout extends StatelessWidget {
 const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        CustomGridView(),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        CustomListView()
      ],
    );
  }
}
