import 'package:flutter/material.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/title.dart';

class AdminLocation extends StatefulWidget {
  const AdminLocation({super.key});

  @override
  State<AdminLocation> createState() => _AdminLocationState();
}

class _AdminLocationState extends State<AdminLocation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("List of Location"),
        CardButton(
            "Location A", description: "Lokasi A berlokasi di Anu", quantity: 01),
        SizedBox(height: 10)
      ],
    );
  }
}
