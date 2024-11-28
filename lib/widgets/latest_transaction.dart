import '../utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'latest_transacton_list_view.dart';


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
