import 'package:flutter/material.dart';
import 'all_expensess_and_quick_invoice_item.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transaction_history.dart';

class DashboardDisktopLayout extends StatelessWidget {
  const DashboardDisktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensessAndQuickInvoiceSection(),
                      ),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          MyCardsAndTransactionHistory(),
                          SizedBox(height: 24),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
