// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Directionality(
      textDirection: TextDirection.ltr,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            height: 100,
            color: Colors.purpleAccent,
            child: Column(children: [
              Text(
                '1',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 51, 255, 0),
            child: Column(children: [
              Text(
                '2',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 0, 4, 255),
            child: Column(children: [
              Text(
                '3',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          ),
          Container(
            height: 100,
            color: Colors.purpleAccent,
            child: Column(children: [
              Text(
                '4',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 51, 255, 0),
            child: Column(children: [
              Text(
                '5',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 0, 4, 255),
            child: Column(children: [
              Text(
                '6',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          ),
          Container(
            height: 100,
            color: Colors.purpleAccent,
            child: Column(children: [
              Text(
                '7',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 51, 255, 0),
            child: Column(children: [
              Text(
                '8',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 0, 4, 255),
            child: Column(children: [
              Text(
                '9',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 60),
              )
            ]),
          )
        ],
      )));
}
