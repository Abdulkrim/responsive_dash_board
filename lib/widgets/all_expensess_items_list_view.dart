import '../utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';

class AllExpensessItemsListView extends StatelessWidget {
  const AllExpensessItemsListView({super.key});
  static const items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AllExpensessItem(
          itemModel: items[index],
        );
      },
    );
  }
}
