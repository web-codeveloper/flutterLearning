import 'package:firstapp/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String image;

  const ProfilePage({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(name),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Image.network(
          image,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      );
}
