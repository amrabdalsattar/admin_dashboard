import 'package:flutter/material.dart';

import '../shared_components/custom_background_container.dart';
import '../shared_components/period_drop_down.dart';
import '../shared_components/section_header.dart';
import 'income_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          SectionHeader(
            title: 'Income',
            postFixWidget: PeriodDropDown(),
          ),
          IncomeBody()
        ],
      ),
    );
  }
}
