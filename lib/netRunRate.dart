import 'package:cricket_calculator/viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class NetRunRate extends StatefulWidget {
  @override
  _NetRunRateState createState() => _NetRunRateState();
}

class _NetRunRateState extends State<NetRunRate> {
  final _runScoredController = TextEditingController();
  final _overFacedController = TextEditingController();
    final _runConcededController = TextEditingController();
  final _overBowledController = TextEditingController();
  var netRunRate = 10;
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
                "Net Run Rate Calculator",
                style: GoogleFonts.shrikhand(color: Colors.green, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: heightsize,
            ),
            TextField(
              controller: _runScoredController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Total Runs Scored", "378"),
            ),
            SizedBox(
              height: heightsize,
            ),
            TextField(
              controller: _overFacedController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Total Over Faced", "48.4"),
            ),
            SizedBox(
              height: heightsize,
            ),
            TextField(
              controller: _runConcededController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Total Runs Conceded", "350"),
            ),
            SizedBox(
              height: heightsize,
            ),
            TextField(
              controller: _overBowledController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Total Over Bowled", "49.5"),
            ),
             SizedBox(
              height: heightsize,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Calculate Net Run Rate",
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),
            SizedBox(
              height: heightsize,
            ),
            netRunRate != null
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
                            "$netRunRate",
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