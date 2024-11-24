import 'package:flutter/material.dart';
import 'all_expensess_item_header.dart';


class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      color: Colors.white,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: const Column(
        children: [
          AllExpensessItemHeader(),
        ],
      ),
    );
  }
}