import 'package:flutter/material.dart';

Drawer drawer() {
  return Drawer(
    child: Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.3),
      appBar: AppBar(
        title: Text("Menue"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                  height: 50, child: Center(child: Text("Information Page"))),
            )
          ],
        ),
      ),
    ),
  );
}
