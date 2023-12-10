import 'package:flutter/material.dart';
import 'package:whizware/widgets/card_button.dart';

class IncomingDeliveryPage extends StatefulWidget {
  const IncomingDeliveryPage({super.key});

  @override
  State<IncomingDeliveryPage> createState() => _IncomingDeliveryPageState();
}

class _IncomingDeliveryPageState extends State<IncomingDeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [TextTitle("Dlivery Incomgin")],
    );
  }
}
