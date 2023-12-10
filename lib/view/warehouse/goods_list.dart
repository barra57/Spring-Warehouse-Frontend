import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whizware/widgets/card_data.dart';
import 'package:whizware/widgets/card_data_description.dart';
import 'package:whizware/widgets/title.dart';

import '../../widgets/card_button.dart';

class GoodsList extends StatefulWidget {
  const GoodsList({super.key});

  @override
  State<GoodsList> createState() => _GoodsListState();
}

class _GoodsListState extends State<GoodsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextTitle("List Goods"),
          Column(children: [
            CardButton(
              "Button",
              description: "Laptop",
              quantity: 5,
            ),
            CardData(
              "Nama Barang",
              description: "Laptop",
              quantity: 5,
              children: [
                CardDataDescription("asdf"),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
