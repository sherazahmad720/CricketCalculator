import 'package:cricket_calculator/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RunRate extends StatefulWidget {
  @override
  _RunRateState createState() => _RunRateState();
}



class _RunRateState extends State<RunRate> {
  final _runController = TextEditingController();
final _ballController = TextEditingController();
var runRate = 10;
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
                "Run Rate (Runs Per Over) Calculator",
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
              decoration: txtdecoration("Total Runs Scored", "57"),
            ),
            SizedBox(
              height: heightSize,
            ),
            TextField(
              controller: _ballController,
              onChanged: (text) {},
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: txtdecoration("Total Over Faced", "eg.7.3"),
            ),
            SizedBox(
              height: heightSize,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                "Calculate Run Rate",
              ),
              color: Colors.green,
              textColor: Colors.white,
            ),
            SizedBox(
              height: heightSize,
            ),
            runRate != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "Teams's/Player's Run Rate is ",
                            style: GoogleFonts.ubuntu(),
                          ),
                          Text(
                            "$runRate",
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
