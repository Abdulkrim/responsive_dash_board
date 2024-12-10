import 'transaction_history.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/my_cards_sections.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [ 
        CustomBackgroundContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyCardsSections(),
              Divider(
                height: 40,
                color: Color(0xFFF1F1F1),
              ),
              TransactionHistory(),
            ],
          ),
        ),
      ],
    );
  }
}
