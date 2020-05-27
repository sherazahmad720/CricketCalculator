import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: functions.length,
            itemBuilder: (context, i) {
              return ExpansionTile(
                title: Text(
                  functions[i].title,
                  style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                children: buildExpandableContent(functions[i]),
              );
            }),
      ),
    );
  }

  buildExpandableContent(Functions function) {
    List<Widget> columnContent = [];

    for (String content in function.contents)
      columnContent.add(
        new ListTile(
          title: new Text(
            content,
            style: new TextStyle(fontSize: 18.0),
          ),
        ),
      );

    return columnContent;
  }
}

class Functions {
  final String title;
  List<String> contents = [];

  Functions(
    this.title,
    this.contents,
  );
}

List<Functions> functions = [
  Functions(
    'What is "Batting Strike Rate" in Cricket',
    [
      "Batting strike rate (s/r) is defined for a batsman as the average number of runs scored per 100 balls faced. The higher the strike rate, the more effective a batsman is at scoring quickly. In Test cricket, a batsman's strike rate is of secondary relevance to his ability to score runs without getting out.",
    ],
  ),
  Functions(
    'What is "Economy Rate"in Cricket?',
    [
      "Economy rate is the average number of runs conceded for each over bowled. Strike Rate is a measurement of a bowler's average number of balls bowled for every wicket taken. A lower economy rate is seen as preferable – it means that the bowler is able to get more batsmen out with fewer balls."
    ],
  ),
  Functions(
    'What is "Run Rate"?',
    [
      "A team's net run rate is calculated by deducting from the average runs per over scored by that team throughout the competition, the average runs per over scored against that team throughout the competition.",
    ],
  ),
  Functions(
    'What is "Net Run Rate"?',
    [
      "A team's net run rate is calculated by deducting from the average runs per over scored by that team throughout the competition, the average runs per over scored against that team throughout the competition.",
    ],
  ),
  Functions(
    'DL Point Calculator',
    [
      "The DLS methods sets targets (and decides outcomes) by calculating how many runs teams should score (and would have scored) if the resources available to both sides were equal. To calculate a target, the formula may simply be expressed thus: Team 2's par score = Team 1's score x (Team 2's resources/Team 1's resources)",
    ],
  ),
  Functions(
    'DL Target Calculator',
    [
      "The DLS methods sets targets (and decides outcomes) by calculating how many runs teams should score (and would have scored) if the resources available to both sides were equal. To calculate a target, the formula may simply be expressed thus: Team 2's par score = Team 1's score x (Team 2's resources/Team 1's resources)",
    ],
  ),
];
