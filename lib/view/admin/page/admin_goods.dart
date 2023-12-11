import 'package:flutter/material.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/title.dart';

class AdminGoods extends StatefulWidget {
  const AdminGoods({super.key});

  @override
  State<AdminGoods> createState() => _AdminGoodsState();
}

class _AdminGoodsState extends State<AdminGoods> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("List of Goods"),
        CardButton(
            "Goods A", description: "Goods A", quantity: 01),
        SizedBox(height: 10)
      ],
    );
  }
}
