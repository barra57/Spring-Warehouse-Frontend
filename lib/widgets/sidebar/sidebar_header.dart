import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 25, 30, 25),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 40,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
            child: Column(
              children: [
                Text(
                  "Warehouse",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                ),
                Text(
                  "Xpos334 Blue Bird Go",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(color: Colors.grey, fontSize: 13)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
