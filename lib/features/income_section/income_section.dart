import 'package:flutter/material.dart';
import 'package:test_app/features/income_section/income_details.dart';
import 'package:test_app/features/income_section/income_chart.dart';

import '../shared_components/custom_background_container.dart';
import '../shared_components/period_drop_down.dart';
import '../shared_components/section_header.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(

      child: Column(
        children: [
          SectionHeader(title: 'Income', postFixWidget: PeriodDropDown(),),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
             
              Expanded( child: IncomeDetails()),
            ],
          )
        ],
      ),
    );
  }
}
