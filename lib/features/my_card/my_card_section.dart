import 'package:flutter/material.dart';
import 'package:test_app/features/my_card/transaction_history.dart';

import '../shared_components/custom_background_container.dart';
import '../shared_components/custom_divider.dart';
import '../shared_components/section_header.dart';
import 'cards_portion.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        padding: 24,
        isFirstInColumn: true,
        child: Column(
          children: [
            SectionHeader(title: 'My card'),
            SizedBox(
              height: 20,
            ),
            CardsPortion(),
            CustomDivider(height: 40),
            TransactionHistory()
          ],
        ));
  }
}
