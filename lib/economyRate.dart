import 'package:cricket_calculator/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class EconomyRate extends StatefulWidget {
  @override
  _EconomyRateState createState() => _EconomyRateState();
}

class _EconomyRateState extends State<EconomyRate> {
   final _runController = TextEditingController();
  final _ballController = TextEditingController();
  var economyRate = 10;
  double heightSize = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: heightSize,
            ),
            Center(
              child: Text(
                "Bowling Economy Rate Calculator",
                style: GoogleFonts.shrikhand(color: Colors.green, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: heightSize,
            ),
            TextField(
              controller: _runController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Runs Conceded", "59"),
            ),
            SizedBox(
              height: heightSize,
            ),
            TextField(
              controller: _ballController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Over Bowled", "eg.7.3"),
            ),
            SizedBox(
              height: heightSize,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Calculate Economy Rate",
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),
            SizedBox(
              height: heightSize,
            ),
            economyRate != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Bowler's Economy Rate is  ",
                            style: GoogleFonts.ubuntu(),
                          ),
                          Text(
                            "$economyRate",
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