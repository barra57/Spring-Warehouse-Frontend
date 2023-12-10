import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SidebarItem extends StatelessWidget {
  const SidebarItem({
    super.key,
    required this.title,
    required this.icon,
    required this.id,
    required this.selected,
    required this.ontap,
  });

  final String title;
  final String icon;
  final int id;
  final int selected;
  final ValueChanged<int> ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: id == selected ? Color(0xff324B4B): Colors.transparent,
      // padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: ListTile(
        selected: true,
        title: Container(
          // color: id == selected ? Color(0xff324B4B): Colors.transparent,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Image.asset(icon, width: 30),
              ),
              Text(
                title,
                style: GoogleFonts.inter(
                    textStyle: TextStyle(color: Colors.white), fontSize: 18),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.pop(context);
          ontap(this.id);
        },
      ),
    );
  }
}
