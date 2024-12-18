import 'income_chart.dart';
import 'income_details.dart';
import '../utils/size_config.dart';
import 'detailed_income_chart.dart';
import 'package:flutter/material.dart';


class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.disktop && width <= 2220 ? 
    const Expanded(child: Padding(
      padding: EdgeInsets.all(16.0),
      child: DetailedIncomeChart(),
    )) : 
    const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(child: IncomeDetails()),
      ],
    );
  }
}