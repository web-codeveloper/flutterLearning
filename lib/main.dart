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
          body: ListView(
            children: [
              ListTile(
                leading: Image.asset('assets/images/my.jpg'),
                title: const Text('Card title 1'),
                subtitle: Text('Card subtitle 1'),
                trailing: Icon(Icons.delete),
              ),
              ListTile(
                leading: Image.asset('assets/images/1.jpg'),
                title: const Text('Card title 2'),
                subtitle: Text('Card subtitle 2'),
                trailing: Icon(Icons.delete),
              ),
              ListTile(
                leading: Image.asset('assets/images/2.jpg'),
                title: const Text('Card title 3'),
                subtitle: Text('Card subtitle 3'),
                trailing: Icon(Icons.delete),
              ),
              ListTile(
                leading: Image.asset('assets/images/3.jpg'),
                title: const Text('Card title 4'),
                subtitle: Text('Card subtitle 4'),
                trailing: Icon(Icons.delete),
              )
            ],
          ))));
}
