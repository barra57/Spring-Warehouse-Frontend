import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class InputNumber extends StatefulWidget {
  int? min;
  int? max;

  InputNumber({super.key, this.min = 0, this.max});

  @override
  State<InputNumber> createState() => _InputNumberState();
}

class _InputNumberState extends State<InputNumber> {
  late TextEditingController _controller;
  late int count;

  @override
  void initState() {
    setState(() {
      count = widget.min ?? 0;
      _controller = TextEditingController(text: count.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Number",
          style: GoogleFonts.inter(
            textStyle: TextStyle(fontSize: 16),
            color: Color(0xff324B4B),
          ),
        ),
        TextField(
          controller: _controller,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: Theme.of(context).textTheme.bodySmall,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            prefixIcon: IconButton(
              onPressed: () {
                setState(() {
                  if (count > widget.min!) {
                    count--;
                    _controller.text = count.toString();
                  }
                });
              },
              icon: Icon(Icons.minimize_sharp),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  if (widget.max == null || count < widget.max!) {
                    count++;
                    _controller.text = count.toString();
                  }
                });
              },
              icon: Icon(Icons.add),
            ),
          ),
        ),
      ],
    );
  }
}
