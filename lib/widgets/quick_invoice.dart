import 'latest_transaction.dart';
import 'quick_invoice_header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
        ],
      ),
    );
  }
}
