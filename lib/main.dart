// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Text(
            'Material App',
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 50),
          ),
        ),
      )));
}
