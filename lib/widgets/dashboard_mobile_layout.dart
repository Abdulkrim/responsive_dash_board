import 'income_section.dart';
import 'package:flutter/material.dart';
import 'my_cards_and_transaction_history.dart';
import 'all_expensess_and_quick_invoice_item.dart';



class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransactionHistory(),
           SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    
      );
  }
}