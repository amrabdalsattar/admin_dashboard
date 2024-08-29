import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextField(hint: 'Type customer name', title: 'Customer name',)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextField(hint: 'Type customer email', title: 'Customer Email',)),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomTextField(hint: 'Type item name', title: 'Item name',)),
            SizedBox(width: 16,),
            Expanded(child: CustomTextField(hint: 'USD', title: 'Item amount',)),
          ],
        ),
      ],
    );
  }
}