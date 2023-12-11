import 'package:flutter/material.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/title.dart';

class AdminStore extends StatefulWidget {
  const AdminStore({super.key});

  @override
  State<AdminStore> createState() => _AdminStoreState();
}

class _AdminStoreState extends State<AdminStore> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("List of Store"),
        CardButton(
            "Store A", description: "Store A berlokasi di Anu", quantity: 01),
        SizedBox(height: 10)
      ],
    );
  }
}
