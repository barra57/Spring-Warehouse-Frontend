import 'package:flutter/material.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/title.dart';

class AdminWarehouse extends StatefulWidget {
  const AdminWarehouse({super.key});

  @override
  State<AdminWarehouse> createState() => _AdminWarehouseState();
}

class _AdminWarehouseState extends State<AdminWarehouse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("List of Warehouse"),
        CardButton("Warehouse A",
            description: "Warehouse A berlokasi di Anu", quantity: 01),
        SizedBox(height: 10)
      ],
    );
  }
}
