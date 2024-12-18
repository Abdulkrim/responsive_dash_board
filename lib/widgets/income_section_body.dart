import 'income_chart.dart';
import 'income_details.dart';
import 'package:flutter/material.dart';


class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width <= 2220 ? 
    const SizedBox() : 
    const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(child: IncomeDetails()),
      ],
    );
  }
}