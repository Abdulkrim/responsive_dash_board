import 'my_card_page_view.dart';
import 'package:flutter/material.dart';
import 'all_expensess_and_quick_invoice_item.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';



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
        Expanded(
          child: MyCardPageView()
          ),  
          
      ],
    );
  }
}