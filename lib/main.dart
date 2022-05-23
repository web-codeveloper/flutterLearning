// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/app_screens/navbar.dart';
import 'package:firstapp/services/users/list_service.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Flutter App',
//         theme: ThemeData(
//           primarySwatch: Colors.purple,
//         ),
//         home: MainPage(),
//         debugShowCheckedModeBanner: false);
//   }
// }

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         drawer: NavigationDrawerWidget(),
//         appBar: AppBar(
//           title: Text("My App"),
//         ),
//       );
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: LoginPage(),
        debugShowCheckedModeBanner: false);
  }
}
