import 'package:firstapp/pages/dashboard_page.dart';
import 'package:firstapp/pages/favorites_page.dart';
import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/pages/notification_page.dart';
import 'package:firstapp/pages/setting_page.dart';
import 'package:firstapp/pages/signup_page.dart';
import 'package:firstapp/pages/users_page.dart';
import 'package:get/get.dart';

class RoutesClass {
  static String login = "/login";
  static String signup = "/signup";
  static String dashboard = "/dashboard";
  static String users = "/users";
  static String favorites = "/favorites";
  static String notifications = "/notifications";
  static String setting = "/setting";

  static String getLoginRoute() => login;
  static String getSignupRoute() => signup;
  static String getDashboardRoute() => dashboard;
  static String getUserRoute() => users;
  static String getFavoriteRoute() => favorites;
  static String getNotificationRoute() => notifications;
  static String getSettingRoute() => setting;

  static List<GetPage> routes = [
    GetPage(page: () => const LoginPage(), name: login),
    GetPage(page: () => const SignupPage(), name: signup),
    GetPage(page: () => const DashboardPage(), name: dashboard),
    GetPage(page: () => const UsersPage(), name: users),
    GetPage(page: () => const FavoritesPage(), name: favorites),
    GetPage(page: () => const NotificationsPage(), name: notifications),
    GetPage(page: () => const SettingPage(), name: setting)
  ];
}
