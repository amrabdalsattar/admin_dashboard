import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/utils/app_styles.dart';

import '../../core/utils/app_colors.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  bool isActive = false;
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
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -2;
          isActive = activeIndex ==
              pieTouchResponse?.touchedSection?.touchedSectionIndex;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      startDegreeOffset: 50,
      sections: [
        PieChartSectionData(
            titlePositionPercentageOffset: -1,
            value: 20,
            color: AppColors.primaryColor,
            badgeWidget: Text(
              activeIndex == 0 ? '' : '20%',
              style: AppStyles.styleMedium16(context).copyWith(color: AppColors.white),
            ),
            showTitle: activeIndex == 0,
            titleStyle:
                AppStyles.styleMedium16(context).copyWith(color: AppColors.primaryColor),
            title: 'Product royalti',
            radius: activeIndex == 0 ? 50 : 40),
        PieChartSectionData(
            badgeWidget: Text(
              activeIndex == 1 ? '' : '25%',
              style: AppStyles.styleMedium16(context).copyWith(color: AppColors.white),
            ),
            titlePositionPercentageOffset: -1.5,
            value: 25,
            color: AppColors.secondaryColor,
            showTitle: activeIndex == 1,
            title: 'Design product',
            titleStyle: AppStyles.styleMedium16
                (context).copyWith(color: AppColors.secondaryColor),
            radius: activeIndex == 1 ? 50 : 40),
        PieChartSectionData(
            badgeWidget: Text(
              activeIndex == 2 ? '' : '40%',
              style: AppStyles.styleMedium16(context).copyWith(color: AppColors.white),
            ),
            titlePositionPercentageOffset: -1,
            value: 40,
            color: AppColors.blue,
            showTitle: activeIndex == 02,
            title: 'Design service',
            titleStyle: AppStyles.styleMedium16(context).copyWith(color: AppColors.blue),
            radius: activeIndex == 2 ? 50 : 40),
        PieChartSectionData(
            badgeWidget: Text(
              activeIndex == 3 ? '' : '15%',
              style: AppStyles.styleMedium16(context).copyWith(color: AppColors.white),
            ),
            titlePositionPercentageOffset: -1,
            value: 15,
            color: AppColors.offWhite,
            showTitle: activeIndex == 3,
            title: 'Other',
            titleStyle:
                AppStyles.styleMedium16(context).copyWith(color: AppColors.offWhite),
            radius: activeIndex == 3 ? 50 : 40),
      ],
    );
  }
}
