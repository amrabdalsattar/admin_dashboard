import 'package:flutter/material.dart';
import 'package:test_app/widgets/grid_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            childAspectRatio: 1,
            crossAxisSpacing: 16),
        itemBuilder: (context, index) => const GridItem());
  }
}
