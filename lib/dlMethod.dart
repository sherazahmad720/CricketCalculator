import 'package:cricket_calculator/viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DLMethod extends StatefulWidget {
  @override
  _DLMethodState createState() => _DLMethodState();
}

class _DLMethodState extends State<DLMethod> {
  final _runController = TextEditingController();
  final _ballController = TextEditingController();
  // TabController _tabController;
  var strikeRate = 10;
  double heightsize = 10;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
              backgroundColor: Colors.greenAccent,

              // title: Text("tabs"),

              bottom: TabBar(
                tabs: <Widget>[
                  Text(
                    "Duckworth-Lewis\nPoint Calculator",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Duckworth-Lewis\nTarget Calculator",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )),
        ),
        body: TabBarView(
          children: <Widget>[tab1(), tab2()],
        ),
      ),
    );
  }

  tab1() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: heightsize,
          ),
          Center(
            child: Text(
              "Duckworth-Lewis\nPoint Calculator",
              style: GoogleFonts.shrikhand(color: Colors.green, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: heightsize,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _runController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("Team A Score", "105"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  controller: _ballController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("For Wicket", "4"),
                ),
              )
            ],
          ),
          SizedBox(
            height: heightsize,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _runController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("Team B Scored", "95"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  controller: _ballController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("For Wicket", "6"),
                ),
              )
            ],
          ),
          SizedBox(
            height: heightsize,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _runController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("OverFaced", "27.0"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  controller: _ballController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("Maximum", "50"),
                ),
              )
            ],
          ),
          SizedBox(
            height: heightsize,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "Calculate Points",
            ),
            color: Colors.green,
            textColor: Colors.white,
          ),
          SizedBox(
            height: heightsize,
          ),
          strikeRate != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Team A Win by ",
                          style: GoogleFonts.ubuntu(),
                        ),
                        Text(
                          "$strikeRate",
                          style: GoogleFonts.ubuntu(
                              color: Colors.green,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    ));
  }

  tab2() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: heightsize,
          ),
          Center(
            child: Text(
              "Duckworth-Lewis\nTarget Calculator",
              style: GoogleFonts.shrikhand(color: Colors.green, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: heightsize,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _runController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("Team A Score", "105"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  controller: _ballController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("For Wicket", "4"),
                ),
              )
            ],
          ),
          SizedBox(
            height: heightsize,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _runController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("Team B Overs", "9"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  controller: _ballController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("For Wicket", "6"),
                ),
              )
            ],
          ),
          SizedBox(
            height: heightsize,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: _runController,
                  onChanged: (text) {},
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: txtdecoration("Maximum", "20"),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(),
              )
            ],
          ),
          SizedBox(
            height: heightsize,
          ),
          RaisedButton(
            onPressed: () {},
            child: Text(
              "Calculate Target",
            ),
            color: Colors.green,
            textColor: Colors.white,
          ),
          SizedBox(
            height: heightsize,
          ),
          strikeRate != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Team A Win by ",
                          style: GoogleFonts.ubuntu(),
                        ),
                        Text(
                          "$strikeRate",
                          style: GoogleFonts.ubuntu(
                              color: Colors.green,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    ));
  }
}
