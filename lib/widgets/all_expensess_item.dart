import 'package:flutter/material.dart';
import 'all_expensess_item_header.dart';
import '../models/all_expensess_item_model.dart';


class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({super.key, required this.itemModel});
  final AllExpensessItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
     
      decoration: ShapeDecoration(
         color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child:  Column(
        children: [
          AllExpensessItemHeader(image: itemModel.image,), 

        ],
      ),
    );
  }
}