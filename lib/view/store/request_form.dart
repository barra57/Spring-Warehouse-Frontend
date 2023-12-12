import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/input/input_number.dart';
import 'package:whizware/widgets/input/input_price.dart';

import '../../widgets/input/input_dropdown.dart';

class RequestForm extends StatefulWidget {
  const RequestForm({super.key});

  @override
  State<RequestForm> createState() => _RequestFormState();
}

class _RequestFormState extends State<RequestForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("Request Form"),
        SizedBox(height: 10),
        InputDrowndown(
          "Goods",
          hint: "Select Goods",
          items: [
            DropdownMenuEntry(value: "1", label: "Lenovo"),
            DropdownMenuEntry(value: "2", label: "Asus"),
            DropdownMenuEntry(value: "3", label: "ROG"),
          ],
        ),
        SizedBox(height: 10),
        InputNumber(),
        SizedBox(height: 10),
        InputPrice("Price", value: 100000),
        SizedBox(height: 10,),
        InputPrice("Total Price", value: 500000),
        SizedBox(height: 10,),
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
                "Submit Request",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
              )),
        ),
      ],
    );
  }
}
