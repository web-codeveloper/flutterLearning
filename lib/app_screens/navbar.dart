// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyNavigationBar()
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  @override
  _MyNavigationBarState createState() {
    return _MyNavigationBarState();
  }
}

class _MyNavigationBarState extends State<MyNavigationBar> {

  final List<Widget> _items = [
    Text(
      'Home',
    ),
    Text(
      'Search',
    ),
    Text(
      'Notifications',
    ),
    Text(
      'Setting',
    ),
    Text(
      'Profile',
    ),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body:
          Center(child: IndexedStack(index: _selectedIndex, children: _items)),
      bottomNavigationBar: _showBottomNav(),
      backgroundColor: Colors.blueAccent,
    );
  }

  Widget _showBottomNav() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 24,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, size: 24,),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, size: 24,),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, size: 24,),
          label: 'Setting',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle, size: 24,),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.grey,
      onTap: _onTap,
    );
  }

  void _onTap(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
