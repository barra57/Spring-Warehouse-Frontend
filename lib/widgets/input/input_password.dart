import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPassword extends StatefulWidget {
  final String text;
  IconData? iconHidden;
  IconData? iconShow;

  InputPassword(this.text, {super.key, this.iconHidden, this.iconShow});

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool hide = true;

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
          obscureText: hide,
          decoration: InputDecoration(
              suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hide = !hide;
              });
            },
            icon: Icon(
              (hide
                      ? (widget.iconHidden ?? Icons.visibility_off_outlined)
                      : (widget.iconShow ?? Icons.visibility_outlined))
                  as IconData,
              size: 25,
            ),
          )),
        ),
      ],
    );
  }
}
