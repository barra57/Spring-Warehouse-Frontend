import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whizware/widgets/card_button.dart';
import 'package:whizware/widgets/input/input_price.dart';
import 'package:whizware/widgets/input/input_text.dart';

class AddGoods extends StatefulWidget {
  const AddGoods({super.key});

  @override
  State<AddGoods> createState() => _AddGoodsState();
}

class _AddGoodsState extends State<AddGoods> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTitle("Add Goods"),
        SizedBox(height: 20),
        InputText("Name Goods"),
        SizedBox(height: 10),
        InputText("Description Goods"),
        SizedBox(height: 10),
        InputPrice("Selling Price", value: 50000),
        SizedBox(height: 10),
        InputPrice("Purchase Price", value: 30000),
        SizedBox(height: 20),
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
