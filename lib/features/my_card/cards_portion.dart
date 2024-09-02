import 'package:flutter/material.dart';

import 'card_page_view.dart';
import 'dots_indicator_row.dart';

class CardsPortion extends StatefulWidget {
  const CardsPortion({super.key});

  @override
  State<CardsPortion> createState() => _CardsPortionState();
}

class _CardsPortionState extends State<CardsPortion> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardPageView(
          onPageChanged: toggleIndicator,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsIndicatorRow(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }

    void toggleIndicator(index) {
    currentPageIndex = index;
    setState(() {});
  }
}
