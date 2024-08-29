import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'credit_card_widget.dart';


class CardPageView extends StatelessWidget {

  final void Function(int)? onPageChanged;
  const CardPageView({super.key, this.onPageChanged});

  @override
  Widget build(BuildContext context) {

    return ExpandablePageView(
        onPageChanged: onPageChanged,
        children: List.generate(3, (index) => const CreditCardWidget()));
  }
}
