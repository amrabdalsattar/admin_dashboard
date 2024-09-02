import 'package:flutter/material.dart';

import '../drawer/custom_drawer.dart';
import '../shared_components/all_expenses_and_quick_invoice_section.dart';
import '../shared_components/card_and_income_sections.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverList.list(
                children: const  [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensesAndQuickInvoiceSection()),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: CardAndIncomeSections())),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
