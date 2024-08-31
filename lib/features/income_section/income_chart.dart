import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
  
      startDegreeOffset: 50,
      sections: [
        PieChartSectionData(
            value: 20,
            color: AppColors.primaryColor,
            showTitle: false,
            radius: activeIndex == 0 ? 50 : 40),
        PieChartSectionData(
            value: 25,
            color: AppColors.secondaryColor,
            showTitle: false,
            radius: activeIndex == 1 ? 50 : 40),
        PieChartSectionData(
            value: 40,
            color: AppColors.blue,
            showTitle: false,
            radius: activeIndex == 2 ? 50 : 40),
        PieChartSectionData(
            value: 15,
            color: AppColors.offWhite,
            showTitle: false,
            radius: activeIndex == 3 ? 50 : 40),
      ],
    );
  }
}
