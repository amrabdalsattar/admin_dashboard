import 'package:flutter/material.dart';

import '../drawer/custom_drawer.dart';
import '../shared_components/all_expenses_and_quick_invoice_section.dart';
import '../shared_components/card_and_income_sections.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                AllExpensesAndQuickInvoiceSection(),
              ],
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(child: CardAndIncomeSections())
        ],
      ),
    );
  }
}
