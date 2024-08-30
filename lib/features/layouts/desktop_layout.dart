import 'package:flutter/material.dart';
import 'package:test_app/features/income_section/income_section.dart';

import '../drawer/custom_drawer.dart';
import '../my_card/my_card_section.dart';
import '../shared_components/all_expenses_and_quick_invoice_section.dart';

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
            child: AllExpensesAndQuickInvoiceSection(),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
              child: Column(
                children: [
                  MyCardSection(),
                  Expanded(child: IncomeSection()),
                ],
              ))
        ],
      ),
    );
  }
}
