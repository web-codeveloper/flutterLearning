// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
          body: Center(
              child: SizedBox(
            height: 350,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(children: [
                  Image.asset(
                    'assets/images/1.jpg',
                    height: 200,
                  )
                ]),
              ),
            ),
          )))));
}
