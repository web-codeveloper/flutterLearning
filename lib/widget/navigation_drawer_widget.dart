import 'package:firstapp/pages/profile_page.dart';
import 'package:firstapp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void logoutButton() {
  final storage = GetStorage();
  storage.erase();
  Get.toNamed(RoutesClass.getLoginRoute());
}

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 15);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final storage = GetStorage();
    var userDetails = storage.read("userInfo");
    var userName = userDetails['details']["name"];
    print(userName);
    const name = 'Partha Mandal';
    const email = 'parthamandal512@gmail.com';
    const image = 'https://web-codeveloper.github.io/parthamandal/img/DSC7.png';

    return Drawer(
      child: Material(
        color: Colors.purple,
        child: ListView(children: <Widget>[
          buildHeader(
              image: image,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfilePage(
                        name: name,
                        image: image,
                      )))),
          const SizedBox(
            height: 5,
          ),
          buildMenuItem(
              text: 'Dashboard',
              icon: Icons.home,
              onClicked: () => Get.toNamed(RoutesClass.getDashboardRoute())),
          const SizedBox(
            height: 1,
          ),
          buildMenuItem(
              text: 'Users',
              icon: Icons.people,
              onClicked: () => Get.toNamed(RoutesClass.getUserRoute())),
          const SizedBox(
            height: 1,
          ),
          buildMenuItem(
              text: 'Favorites',
              icon: Icons.favorite_border,
              onClicked: () => Get.toNamed(RoutesClass.getFavoriteRoute())),
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
              onClicked: () => Get.toNamed(RoutesClass.getNotificationRoute())),
          const SizedBox(
            height: 1,
          ),
          buildMenuItem(
              text: 'Setting',
              icon: Icons.settings,
              onClicked: () => Get.toNamed(RoutesClass.getSettingRoute())),
          const SizedBox(
            height: 1,
          ),
          buildMenuItem(
              text: 'Logout',
              icon: Icons.logout_rounded,
              onClicked: logoutButton
              // onClicked: (){}
              )
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

  Widget buildHeader(
          {required String image,
          required String name,
          required String email,
          required VoidCallback onClicked}) =>
      InkWell(
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
                  Text(name,
                      style:
                          const TextStyle(fontSize: 17, color: Colors.white)),
                  const SizedBox(height: 4),
                  Text(email,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.white)),
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
