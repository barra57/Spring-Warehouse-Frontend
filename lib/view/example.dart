import 'package:flutter/material.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/card_data.dart';
import 'package:whizware/widgets/card_data_description.dart';
import 'package:whizware/widgets/filter/filter.dart';
import 'package:whizware/widgets/input/input_number.dart';
import 'package:whizware/widgets/input/input_price.dart';
import 'package:whizware/widgets/input/input_text.dart';
import 'package:whizware/widgets/title.dart';

import '../../widgets/input/input_dropdown.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() =>
      _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("Hello"),
        CardButton("Lenovo", description: "Laptop Bagus", quantity: 50),
        SizedBox(height: 10),
        CardData("Nama Barang",
            description: "Asus ROG",
            quantity: 15,
            children: [
              CardDataDescription("Selling Price: 13123"),
              CardDataDescription("Purchase Price: 13123"),
            ]),
        InputText("Username"),
        InputDrowndown(
          "Goods",
          hint: "Select Goods",
          items: [
            DropdownMenuEntry(value: "1", label: "Lenovo"),
            DropdownMenuEntry(value: "2", label: "Asus"),
            DropdownMenuEntry(value: "3", label: "ROG"),
          ],
        ),
        InputNumber(),
        Filter(labels: ["All", "Accepted", "Waiting", "Rejected", "asdf", ",asdf", "asdff"]),
        InputPrice("Price", value: 100000,),
      ],
    );
  }
}
