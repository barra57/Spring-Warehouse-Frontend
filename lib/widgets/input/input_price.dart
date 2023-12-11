import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whizware/utils/number_formatter.dart';

class InputPrice extends StatefulWidget {
  final String text;
  final int value;

  const InputPrice(this.text, {super.key, required this.value});

  @override
  State<InputPrice> createState() => _InputPriceState();
}

class _InputPriceState extends State<InputPrice> {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            NumberFormatter.format(widget.value),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        )
      ],
    );
  }
}
