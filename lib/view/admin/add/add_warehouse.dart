import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/input/input_dropdown.dart';
import 'package:whizware/widgets/input/input_text.dart';

class AddWarehouse extends StatefulWidget {
  const AddWarehouse({super.key});

  @override
  State<AddWarehouse> createState() => _AddWarehouseState();
}

class _AddWarehouseState extends State<AddWarehouse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("Add Warehouse"),
        SizedBox(height: 20),
        InputText("Name Warehouse"),
        SizedBox(height: 10),
        InputDrowndown("Location", hint: "Select Location", items: [
          DropdownMenuEntry(value: "1", label: "Location A"),
          DropdownMenuEntry(value: "2", label: "LOcation B"),
          DropdownMenuEntry(value: "3", label: "Location C")
        ]),
        SizedBox(height: 50),
        Center(
          child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(150, 20, 150, 20),
                  backgroundColor: Color(0xff008080),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(8)))),
              onPressed: () {},
              child: Text(
                "Add",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
              )),
        )
      ],
    );
  }
}
