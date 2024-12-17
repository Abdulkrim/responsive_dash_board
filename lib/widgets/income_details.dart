import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';



class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208CC8), title: "Design service", value: "40%"),
    ItemDetailsModel(
        color: Color(0xFF4EB7F2), title: "Design product", value: "25%"),
    ItemDetailsModel(
        color: Color(0xFF064061), title: "Product royalti", value: "20%"),
    ItemDetailsModel(color: Color(0xFFE2DECD), title: "Other", value: "22%"),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) =>  ItemDetails(itemDetailsModel:e)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) =>
    //       ItemDetails(itemDetailsModel: items[index]),
    // );
  }
}
