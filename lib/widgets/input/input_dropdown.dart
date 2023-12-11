import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputDrowndown extends StatefulWidget {
  final String title;
  final String hint;
  final List<DropdownMenuEntry> items;

  const InputDrowndown(
    this.title, {
    super.key,
    required this.hint,
    required this.items,
  });

  @override
  State<InputDrowndown> createState() => _InputDrowndownState();
}

class _InputDrowndownState extends State<InputDrowndown> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(fontSize: 16),
                  color: Color(0xff324B4B),
                ),
              ),
              DropdownMenu(
                  controller: _controller,
                  hintText: widget.hint,
                  width: constraints.maxWidth,
                  textStyle: GoogleFonts.inter(
                      textStyle: TextStyle(
                    color: Color(0xFF324B4B),
                    fontSize: 16,
                  )),
                  inputDecorationTheme: InputDecorationTheme(
                      contentPadding: EdgeInsets.all(20),
                      filled: true,
                      fillColor: Color(0xFF95B1B0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                  dropdownMenuEntries: widget.items),
            ],
          );
        },
      ),
    );
  }
}
