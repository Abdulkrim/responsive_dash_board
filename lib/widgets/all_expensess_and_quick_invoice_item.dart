import 'all_expensess.dart';
import 'quick_invoice.dart';
import 'package:flutter/material.dart';


class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
    children: [
       SizedBox(
        height: 40,
      ),
      AllExpensess(),
      SizedBox(
        height: 24,
      ),
      QuickInvoice(), 
    ],
            );
  }
}