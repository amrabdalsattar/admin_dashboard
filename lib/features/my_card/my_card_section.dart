import 'package:flutter/material.dart';

import '../shared_components/custom_background_container.dart';
import '../shared_components/section_header.dart';
import 'card_page_view.dart';
import 'dots_indicator_row.dart';


class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        padding: 24,
        isFirstInColumn: true,
        child: Column(
          children: [
            const SectionHeader(title: 'My card', postFixWidget: SizedBox()),
            const SizedBox(
              height: 20,
            ),
            CardPageView(
              onPageChanged: toggleIndicator,
            ),
            const SizedBox(
              height: 19,
            ),
            DotsIndicatorRow(
              currentPageIndex: currentPageIndex,
            )
          ],
        ));
  }

  void toggleIndicator(index) {
    currentPageIndex = index;
    setState(() {});
  }
}
