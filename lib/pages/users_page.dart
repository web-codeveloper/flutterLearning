import 'package:firstapp/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Users'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
      );
}
