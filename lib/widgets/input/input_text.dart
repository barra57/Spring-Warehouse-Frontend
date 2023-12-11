import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputText extends StatefulWidget {
  final String text;
  IconData? icon;

  InputText(
    this.text, {
    super.key,
  });

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.inter(
            textStyle: TextStyle(fontSize: 16),
            color: Color(0xff324B4B),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(widget.icon),
          ),
        ),
      ],
    );
  }
}
