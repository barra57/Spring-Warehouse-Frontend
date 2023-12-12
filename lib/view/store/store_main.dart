import 'package:flutter/cupertino.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/card_data.dart';
import 'package:whizware/widgets/card_data_description.dart';

import '../../widgets/filter/filter.dart';
import '../../widgets/input/input_number.dart';
import '../../widgets/input/input_price.dart';

class StoreMain extends StatefulWidget {
  const StoreMain({super.key});

  @override
  State<StoreMain> createState() => _StoreMainState();
}

class _StoreMainState extends State<StoreMain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Filter(labels: ["All", "Accepted", "Waiting", "Rejected"]),
        SizedBox(height: 10),
        CardData("Nama Barang",
            description: "Date: xx-xx-xxxx",
            quantity: 1000000,
            children: [
              CardDataDescription("Qty: xx")
            ]),
      ],
    );
  }
}
