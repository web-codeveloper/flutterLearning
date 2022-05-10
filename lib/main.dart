// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    decoration: BoxDecoration(color: Colors.blueAccent),
    child: Column(children: [
      Text(
        'Partha',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 60),
      )
    ]),
  ));
}
