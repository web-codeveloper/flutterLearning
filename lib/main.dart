// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    // padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
    padding: EdgeInsets.all(50.0),
    child: Column(children: [
      Text(
        'Partha',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 60),
      )
    ]),
  ));
}
