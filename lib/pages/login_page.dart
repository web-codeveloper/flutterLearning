import 'package:firstapp/pages/signup_page.dart';
import 'package:firstapp/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    var emailId;
    var password;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 255, 253),
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          height: 560,
          width: 1000,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                  child: Center(
                child: Padding(
                    padding: (MediaQuery.of(context).size.width > 900)
                        ? const EdgeInsets.all(100.0)
                        : (MediaQuery.of(context).size.width < 901 &&
                                MediaQuery.of(context).size.width > 500)
                            ? const EdgeInsets.all(70.0)
                            : const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Login',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.blueAccent)),
                        const SizedBox(height: 28),
                        TextField(
                            decoration:
                                const InputDecoration(label: Text('Email Id')),
                            onChanged: (_val) {
                              emailId = _val;
                            }),
                        const SizedBox(height: 24),
                        TextField(
                            decoration:
                                const InputDecoration(label: Text('Password')),
                            onChanged: (_val) {
                              password = _val;
                            }),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topRight,
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text("Forgot password?"),
                          ),
                        ),
                        const SizedBox(height: 30),
                        MaterialButton(
                          onPressed: () async {
                            Map<String, dynamic> data = {
                              "emailId": emailId,
                              "password": password,
                            };
                            String res = await authService.login(data);

                            res == "success"
                                ? Get.toNamed(RoutesClass.getLoginRoute())
                                : Fluttertoast.showToast(msg: res);
                            setState(() {});
                          },
                          child: const Text("Login",
                              style: TextStyle(fontSize: 18)),
                          minWidth: double.infinity,
                          height: 52,
                          elevation: 32,
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        const SizedBox(height: 30),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 16),
                            primary: Colors.grey,
                          ),
                          onPressed: () {
                            Get.toNamed(RoutesClass.getSignupRoute());
                          },
                          child: const Text('New user? Sign up'),
                        ),
                      ],
                    )),
              )),
              if (MediaQuery.of(context).size.width > 900)
                Expanded(
                    child: Container(
                  color: Colors.white,
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/login.png'),
                            fit: BoxFit.cover)),
                  ),
                ))
            ],
          ),
        )),
      ),
    );
  }
}
