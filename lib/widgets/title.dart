import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardButton extends StatefulWidget {
  const CardButton(
      String this.title, {
        super.key,
        required this.description,
        required this.quantity,
      });

  final String title;
  final String description;
  final int quantity;

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.check_circle,
                      size: 24,
                      color: Color(0xff84FF82),
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      size: 24,
                      color: Colors.black45,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.cancel,
                      size: 24,
                      color: Color(0xffFF4040),
                    ),
                    onPressed: () {},
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}

