import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            title:  activeIndex == 0  ? "Design service" : "40%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.black
            ),
            titlePositionPercentageOffset:  activeIndex == 0  ? 1.5 : null ,
            value: 40,
            radius: activeIndex == 0 ? 60 : 50,
            color: const Color(0xFF208CC8),
          ),
          PieChartSectionData(
            title:  activeIndex == 1  ? "Design product" : "25%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.black
            ),
            titlePositionPercentageOffset:  activeIndex == 1  ? 2.1 : null ,
            value: 25,
            radius: activeIndex == 1 ? 60 : 50,
            color: const Color(0xFF4EB7F2),
          ),
          PieChartSectionData(
            title:  activeIndex == 2  ? "Product royalti" : "20%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.black
            ),
            titlePositionPercentageOffset:  activeIndex == 2  ? 1.4 : null ,
            value: 20,
            radius: activeIndex == 2 ? 60 : 50,
            color: const Color(0xFF064061),
          ),
          PieChartSectionData(
            title:  activeIndex == 3  ? "Other" : "22%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: Colors.black
            ),
            titlePositionPercentageOffset:  activeIndex == 3  ? 1.5 : null ,
            value: 22,
            radius: activeIndex == 3 ? 60 : 50,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
