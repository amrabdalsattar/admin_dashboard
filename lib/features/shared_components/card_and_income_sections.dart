import 'package:flutter/material.dart';

import '../income_section/income_section.dart';
import '../my_card/my_card_section.dart';

class CardAndIncomeSections extends StatelessWidget {
  const CardAndIncomeSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardSection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ],
    );
  }
}
