import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Username",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(fontSize: 16),
                      color: Color(0xff324B4B),
                    ),
                  ),
                  TextField(
                    decoration:
                        InputDecoration(suffixIcon: Icon(Icons.person_outline)),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(fontSize: 16),
                      color: Color(0xff324B4B),
                    ),
                  ),
                  TextField(
                    obscureText: hide,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hide = !hide;
                        });
                      },
                      icon: Icon(
                        hide
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 25,
                      ),
                    )),
                  ),
                ],
              ),
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
