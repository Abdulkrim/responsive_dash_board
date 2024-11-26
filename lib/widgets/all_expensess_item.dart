import 'package:flutter/material.dart';
import 'all_expensess_item_header.dart';
import '../models/all_expensess_item_model.dart';
import 'inactive_and_active_all_expensess_item.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';



class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({super.key, required this.itemModel, required this.isSelected});
  final AllExpensessItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InActiveAllExpensessItem(itemModel: itemModel);
  }
}