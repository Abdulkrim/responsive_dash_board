import 'package:responsive_dash_board/widgets/latest_transacton_list_view.dart';

import 'quick_invoice_header.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';


class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
        ],
      ),
    );
  }
}

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        const LatestTransactionListView()
      ],
    );
  }
}
