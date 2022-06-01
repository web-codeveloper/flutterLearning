import 'package:firstapp/pages/dashboard_page.dart';
import 'package:firstapp/pages/favorites_page.dart';
import 'package:firstapp/pages/notification_page.dart';
import 'package:firstapp/pages/profile_page.dart';
import 'package:firstapp/pages/setting_page.dart';
import 'package:firstapp/pages/users_page.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 15);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const name = 'Partha Mandal';
    const email = 'parthamandal512@gmail.com';
    const image = 'https://www.w3schools.com/w3images/avatar2.png';

    return Drawer(
      child: Material(
        color: Colors.purple,
        child: ListView( children: <Widget>[
          buildHeader(
            image: image,
            name: name,
            email: email,
            onClicked: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ProfilePage(
              name: name,
              image: image,
            )))
          ),
          const SizedBox(
            height: 5,
          ),
          buildMenuItem(
              text: 'Dashboard',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0)),
          const SizedBox(
            height: 1,
          ),
          buildMenuItem(
              text: 'Users',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 1)),
          const SizedBox(
            height: 1,
          ),
          buildMenuItem(
              text: 'Favorites',
              icon: Icons.favorite_border,
              onClicked: () => selectedItem(context, 2)),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            color: Colors.white70,
            thickness: 0.5,
          ),
          const SizedBox(
            height: 15,
          ),
          buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications,
              onClicked: () => selectedItem(context, 3)),
          const SizedBox(
            height: 1,
          ),
          buildMenuItem(
              text: 'Setting',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 4)),
              const SizedBox(
            height: 1,
          ),
          buildMenuItem(
              text: 'Logout',
              icon: Icons.logout_rounded,
              onClicked: () {})
        ]),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  selectedItem(BuildContext context, int i) {
    Navigator.of(context).pop();
    switch (i) {
      case 0:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const DashboardPage()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const UsersPage()));
        break;
      case 2:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const FavoritesPage()));
        break;
      case 3:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const NotificationsPage()));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const SettingPage()));
        break;
      default:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const DashboardPage()));
    }
  }

  Widget buildHeader({required String image, required String name, required String email, required VoidCallback onClicked}) => InkWell(
    onTap: onClicked,
    child: Container(
      padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
      child: Row(
        children: [
          CircleAvatar(radius: 25, backgroundImage: NetworkImage(image)),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 17, color: Colors.white)),
              const SizedBox(height: 4),
              Text(email, style: const TextStyle(fontSize: 12, color: Colors.white)),
            ],
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 20,
            backgroundColor: Color.fromRGBO(30, 60, 168, 1),
            child: Icon(Icons.add_comment_outlined, color: Colors.white),
          )
        ],
      ),
    ),
  );
}
