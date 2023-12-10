import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDataDescription extends StatelessWidget {
  const CardDataDescription(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: Color(0xff324B4B),
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
