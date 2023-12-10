import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whizware/view/dashboard.dart';
import 'package:whizware/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff008080)),
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        home: Dashboard(title: "Warehouse")
        // home: Login()
    );
  }
}