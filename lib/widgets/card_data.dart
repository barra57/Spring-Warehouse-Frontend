import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardData extends StatefulWidget {
  const CardData(
      String this.title, {
        super.key,
        required this.description,
        required this.quantity,
        required this.children,
      });

  final String title;
  final String description;
  final int quantity;
  final List<Widget> children;

  @override
  State<CardData> createState() => _CardDataState();
}

class _CardDataState extends State<CardData> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          show = !show;
        });
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
        decoration: BoxDecoration(
            color: Color(0xff95B1B0),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: Color(0xff324B4B),
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    Text(
                      widget.description,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color(0xff324B4B),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.quantity.toString(),
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Color(0xff324B4B),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ],
            ),
            if (show)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.children,
              )
          ],
        ),
      ),
    );
  }
}
