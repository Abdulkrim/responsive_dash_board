import 'package:flutter/material.dart';
import 'my_cards_and_transaction_history.dart';
import 'all_expensess_and_quick_invoice_item.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';

class DashboardDisktopLayout extends StatelessWidget {
  const DashboardDisktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: AllExpensessAndQuickInvoiceSection(),
            )),
        SizedBox(width: 24),
        Expanded(child: SingleChildScrollView(child: IncomeSection()))
      ],
    );
  }
}
