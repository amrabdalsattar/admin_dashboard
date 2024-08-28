import 'package:flutter/material.dart';


import '../all_expenses_sction/all_expenses_section.dart';
import '../drawer/custom_drawer.dart';
import '../quick_invoice_section/quick_invoice_section.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32,),
          Expanded(
            flex: 2,
            child: Column(
            children: [
              SizedBox(height: 40,),
              AllExpensesSection(),
              SizedBox(height: 24,),
              QuickInvoiceSection(),
            ],
          )),
        ],
      ),
    );
  }
}
