// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firstapp/app_screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Flutter App',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
              ),
              backgroundColor: Colors.black87,
            ),
            backgroundColor: Colors.lightBlue,
            body: MyCard()));
  }
}
