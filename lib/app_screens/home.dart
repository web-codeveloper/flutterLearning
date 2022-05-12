// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 500,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(children: [
            Image.asset(
              'assets/images/1.jpg',
              height: 150,
            ),
            Divider(),
            Text(
              'Nature Image',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
              onPressed: () {
                print('Text Button Clicked');
              },
              child: Text('Click Me'),
              style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.all(12.0),
                  textStyle: TextStyle(fontSize: 16)),
            ),
            ElevatedButton(
                onPressed: () {
                  print('Elevated Button Clicked');
                },
                child: Text('Click Me'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                )),
            FloatingActionButton(
              onPressed: () {
                print('Floating Action Button Clicked');
              },
              child: Text('Click'),
              backgroundColor: Colors.redAccent,
            )
          ]),
        ),
      ),
    ));
  }
}
