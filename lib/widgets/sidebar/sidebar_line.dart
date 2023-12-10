import 'package:flutter/material.dart';

class SidebarLine extends StatefulWidget {
  const SidebarLine({
    super.key,
  });

  @override
  State<SidebarLine> createState() => _SidebarLineState();
}

class _SidebarLineState extends State<SidebarLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Divider(color: Color(0xff324B4B)));
  }
}
