// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
 runApp(
   Row(textDirection: TextDirection.ltr, children: [
     Text(
       'One',
       textDirection: TextDirection.ltr,
       style: TextStyle(fontSize: 50),
     ),
     Text(
       'Two',
       textDirection: TextDirection.ltr,
       style: TextStyle(fontSize: 50),
     ),
     Text(
       'Three',
       textDirection: TextDirection.ltr,
       style: TextStyle(fontSize: 50),
     )
   ]),
 );
}
