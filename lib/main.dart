// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:firstapp/widget/navigation_drawer_widget.dart';
import 'package:get/get.dart';
import 'package:firstapp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  // final storage = GetStorage();
  // runApp(
  //     (storage.read("isLogedin") != null && storage.read("isLogedin") == true && !storage.read("isLogedin"))
  //         ? Dashboard()
  //         : MyApp());
  // if(storage.read("isLogedin")){
  //   runApp(Dashboard());
  // }else{
  //   runApp(MyApp());
  // }
  runApp(MyApp());
}

// class Dashboard extends StatelessWidget {
//   const Dashboard({Key? key}) : super(key: key);

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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        initialRoute: RoutesClass.getLoginRoute(),
        getPages: RoutesClass.routes,
        debugShowCheckedModeBanner: false);
  }
}
