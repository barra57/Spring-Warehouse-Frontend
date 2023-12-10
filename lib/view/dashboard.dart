import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whizware/view/warehouse/goods_list.dart';
import 'package:whizware/view/warehouse/home.dart';
import 'package:whizware/view/warehouse/incoming_delivery_page.dart';
import 'package:whizware/view/warehouse/incoming_transfer_request.dart';

import '../widgets/sidebar/sidebar_header.dart';
import '../widgets/sidebar/sidebar_item.dart';
import '../widgets/sidebar/sidebar_line.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key, required this.title});

  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selected = 0;
  int _selectedMenu = 0;
  final List<Widget> _children = [
    // GoodsList(),
    IncomingTransferRequest(),
    Home(),
    Home(),
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    void ontap(int index) {
      setState(() {
        this.selected = index;
        this._selectedMenu = index;
      });
    }

    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return Transform.translate(
                offset: Offset(20, 0),
                child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 40,
                    )),
              );
            },
          ),
          centerTitle: true,
          toolbarHeight: 100,
          backgroundColor: Color(0xff008080),
          title: Text(
            widget.title,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        drawer: Container(
          width: 300,
          child: Drawer(
            backgroundColor: Color(0xff008080),
            child: Container(
              // padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: ListView(
                children: [
                  SidebarHeader(),
                  SidebarLine(),
                  SidebarItem(
                    title: "Dashboard",
                    icon: "assets/images/home.png",
                    id: 0,
                    selected: selected,
                    ontap: (int index) {
                      ontap(0);
                    },
                  ),
                  SidebarLine(),
                  SidebarItem(
                    title: "Goods",
                    icon: "assets/images/box.png",
                    id: 1,
                    selected: selected,
                    ontap: (int index) {
                      ontap(1);
                    },
                  ),
                  SidebarItem(
                    title: "Delivery",
                    icon: "assets/images/car.png",
                    id: 2,
                    selected: selected,
                    ontap: (int index) {
                      ontap(2);
                    },
                  ),
                  SidebarItem(
                    title: "Transfer",
                    icon: "assets/images/right.png",
                    id: 3,
                    selected: selected,
                    ontap: (int index) {
                      ontap(3);
                    },
                  ),
                  SidebarLine(),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: _children[_selectedMenu],
          ),
        ));
  }
}
