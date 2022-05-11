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
          backgroundColor: Colors.cyan,
          body: GridView.extent(
            maxCrossAxisExtent: 100,
            mainAxisSpacing: 20,
            crossAxisSpacing: 100,
            children: [
              Image(image: AssetImage('assets/images/1.jpg')),
              Image(image: AssetImage('assets/images/2.jpg')),
              Image(image: AssetImage('assets/images/3.jpg')),
              Image(image: AssetImage('assets/images/4.jpg')),
              Image(image: AssetImage('assets/images/5.jpg')),
            ],
          ))));
}
