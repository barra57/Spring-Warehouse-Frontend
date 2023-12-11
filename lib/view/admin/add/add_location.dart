import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/card_button.dart';
import '../../../widgets/input/input_text.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({super.key});

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextTitle("Add Location"),
      SizedBox(height: 20),
      InputText("Where is Location"),
      SizedBox(height: 10),
      Center(
        child: TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(150, 20, 150, 20),
                backgroundColor: Color(0xff008080),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
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
    ]);
  }
}
