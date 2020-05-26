import 'package:cricket_calculator/page1.dart';
import 'package:cricket_calculator/page2.dart';
import 'package:cricket_calculator/page3.dart';
import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

import 'package:google_fonts/google_fonts.dart'; //delet it if you dont want google font or add dependencis

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
// List Of Pages
  final List<Widget> _children = [
    Page1(),
    Page2(),
    Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    //Main App Page
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crick Caculator',
          style: GoogleFonts.ubuntu(),
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        items: <FFNavigationBarItem>[
          FFNavigationBarItem(
            iconData: Icons.offline_bolt,
            label: "Batting SR",
          ),
          FFNavigationBarItem(
            iconData: Icons.offline_bolt,
            label: "Economy Rate",
          ),
          FFNavigationBarItem(
            iconData: Icons.offline_bolt,
            label: "Run Rate",
          ),
        ],
        theme: FFNavigationBarTheme(
            barHeight: 70,
            // barBackgroundColor: Colors.white,
            selectedItemBackgroundColor: Colors.green,
            // selectedItemIconColor: Colors.white,
            selectedItemLabelColor: Colors.green,
            unselectedItemIconColor: Colors.lightGreen,
            unselectedItemLabelColor: Colors.lightGreen,
            unselectedItemTextStyle: TextStyle(fontSize: 10),
            selectedItemTextStyle:
                TextStyle(fontSize: 11, fontWeight: FontWeight.bold)),
        selectedIndex: _currentIndex,
        onSelectTab: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

      // set the body to our pages
      body: _children[_currentIndex],
    );
  }
}
