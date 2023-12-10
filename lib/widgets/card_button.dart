import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(
      String this.data, {
        super.key,
      });

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      this.data,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
            color: Color(0xff324B4B),
            fontWeight: FontWeight.w700,
            fontSize: 20,
          )),
    );
  }
}
