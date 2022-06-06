// ignore_for_file: prefer_const_constructors, prefer_final_fields
import 'package:get/get.dart';
import 'package:firstapp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

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
