import 'package:flutter/material.dart';

import '../all_expenses_sction/all_expenses_section.dart';
import '../quick_invoice_section/quick_invoice_section.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesSection(),
        SizedBox(height: 24,),
        QuickInvoiceSection(),
      ],
    );
  }
}
