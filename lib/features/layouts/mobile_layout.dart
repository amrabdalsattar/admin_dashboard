import 'package:flutter/material.dart';

import '../shared_components/all_expenses_and_quick_invoice_section.dart';
import '../shared_components/card_and_income_sections.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AllExpensesAndQuickInvoiceSection(),
        SizedBox(
          height: 24,
        ),
        CardAndIncomeSections()
      ],
    );
  }
}
