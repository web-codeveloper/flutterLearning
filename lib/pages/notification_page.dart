import 'package:firstapp/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Notifications'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
      );
}
