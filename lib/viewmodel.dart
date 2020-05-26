// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecoration txtdecoration(String label, String hint) {
  return InputDecoration(
      // suffix: Text(
      //   "$suffix",
      //   style: TextStyle(color: Colors.pink),
      // ),
      labelText: "$label",
      hintText: hint,
      fillColor: Colors.white,
      border: new OutlineInputBorder()

      //fillColor: Colors.green
      );
}
