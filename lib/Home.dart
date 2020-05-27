import 'package:cricket_calculator/dlMethod.dart';
import 'package:cricket_calculator/economyRate.dart';
import 'package:cricket_calculator/info.dart';
import 'package:cricket_calculator/my_flutter_app_icons.dart';
import 'package:cricket_calculator/netRunRate.dart';
import 'package:cricket_calculator/runRate.dart';
import 'package:cricket_calculator/strikeRate.dart';
import 'package:flutter/material.dart';
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
    StrikeRate(),
    EconomyRate(),
    RunRate(),
    NetRunRate(),
    DLMethod(),
    InformationPage()
  ];
  @override
  Widget build(BuildContext context) {
    //Main App Page
    return Scaffold(
      drawer: Drawer(
        child: drawer(),
      ),
      appBar: AppBar(
        title: Text(
          'Crick Caculator',
          style: GoogleFonts.ubuntu(),
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        items: <FFNavigationBarItem>[
          FFNavigationBarItem(
            iconData: MyFlutterApp.cricket,
            label: "Batting SR",
          ),
          FFNavigationBarItem(
            iconData: MyFlutterApp.untitled_12_01,
            label: "Economy \nRate",
          ),
          FFNavigationBarItem(
            iconData: MyFlutterApp.a1375323,
            label: "Run Rate",
          ),
          FFNavigationBarItem(
            iconData: MyFlutterApp.statistics,
            label: "Net \nRun Rate",
          ),
          FFNavigationBarItem(
            iconData: MyFlutterApp.rain,
            label: "D/L \nMethod",
          ),
        ],
        theme: FFNavigationBarTheme(
            barHeight: 70,
            itemWidth: 40,
            // barBackgroundColor: Colors.white,
            selectedItemBackgroundColor: Colors.green,
            selectedItemIconColor: Colors.white,
            selectedItemLabelColor: Colors.green,
            unselectedItemIconColor: Colors.black,
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

  drawer() {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.3),
      appBar: AppBar(
        title: Text("Menue"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  _currentIndex = 5;
                });
                Navigator.of(context).pop();
              },
              child: Container(
                  height: 50, child: Center(child: Text("Information Page"))),
            )
          ],
        ),
      ),
    );
  }
}
