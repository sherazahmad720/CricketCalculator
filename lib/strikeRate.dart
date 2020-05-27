import 'package:cricket_calculator/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StrikeRate extends StatefulWidget {
  @override
  StrikeRateState createState() => StrikeRateState();
}

class StrikeRateState extends State<StrikeRate> {
  final _runController = TextEditingController();
  final _ballController = TextEditingController();
  var strikeRate = 10;
  double heightsize = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: heightsize,
            ),
            Center(
              child: Text(
                "Batting Strike Rate Calculator",
                style: GoogleFonts.shrikhand(color: Colors.green, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: heightsize,
            ),
            TextField(
              controller: _runController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Runs Scored", "95"),
            ),
            SizedBox(
              height: heightsize,
            ),
            TextField(
              controller: _ballController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Balls Faced", "104"),
            ),
            SizedBox(
              height: heightsize,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Calculate Strike Rate",
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
                            "Batsman's Strike Rate is ",
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
      )),
    );
  }
}
