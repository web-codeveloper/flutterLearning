import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/pages/signup_page.dart';
import 'package:get/get.dart';

class RoutesClass {
  static String login = "/login";
  static String signup = "/signup";

  static String getLoginRoute() => login;
  static String getSignupRoute() => signup;

  static List<GetPage> routes = [
    GetPage(page: () => LoginPage(), name: login),
    GetPage(page: () => SignupPage(), name: signup)
  ];
}
