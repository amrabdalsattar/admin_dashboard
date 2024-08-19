import 'package:flutter/material.dart';
import 'package:test_app/widgets/grid_item.dart';

class CustomTabletList extends StatelessWidget {
  const CustomTabletList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: AspectRatio(
              aspectRatio: 1,
              child: GridItem()),
          )),
      ),
    );
  }
}