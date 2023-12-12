import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/card_button.dart';
import '../../../widgets/input/input_dropdown.dart';
import '../../../widgets/input/input_text.dart';

class AddStore extends StatefulWidget {
  const AddStore({super.key});

  @override
  State<AddStore> createState() => _AddStoreState();
}

class _AddStoreState extends State<AddStore> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("Add Store"),
        SizedBox(height: 20),
        InputText("Name Store"),
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
