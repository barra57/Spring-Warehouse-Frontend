import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/card_data.dart';
import 'package:whizware/widgets/card_data_description.dart';
import 'package:whizware/widgets/title.dart';

class IncomingTransferRequest extends StatefulWidget {
  const IncomingTransferRequest({super.key});

  @override
  State<IncomingTransferRequest> createState() =>
      _IncomingTransferRequestState();
}

class _IncomingTransferRequestState extends State<IncomingTransferRequest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("Hello"),
        CardButton("Nama Barang",
            description: "Deskripsi Barang", quantity: 25),
        SizedBox(height: 10),
        CardButton("Lenovo", description: "Laptop Bagus", quantity: 50),
        SizedBox(height: 10),
        CardData("Nama Barang",
            description: "Asus ROG",
            quantity: 15,
            children: [
              CardDataDescription("Selling Price: 13123"),
              CardDataDescription("Purchase Price: 13123"),
            ])
      ],
    );
  }
}
