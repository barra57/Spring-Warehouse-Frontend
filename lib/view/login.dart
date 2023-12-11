import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whizware/widgets/input/input_password.dart';
import 'package:whizware/widgets/input/input_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Transform.translate(
          offset: Offset(0, -30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(height: 30),
              Text(
                "Welcome to Whiz Ware",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(fontSize: 20),
                    color: Color(0xff95B1B0)),
              ),
              Text(
                "Login",
                style: GoogleFonts.inter(
                    textStyle: TextStyle(fontSize: 40),
                    color: Color(0xff324B4B),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 50),
              InputText("Username"),
              SizedBox(height: 50),
              InputPassword("Password"),
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
                      "Login",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
