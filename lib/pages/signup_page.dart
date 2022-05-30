import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
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
                )),
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
                        const Text('Sign Up',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.blueAccent)),
                        const SizedBox(height: 28),
                        const TextField(
                          decoration: InputDecoration(label: Text('Name')),
                        ),
                        const SizedBox(height: 15),
                        const TextField(
                          decoration: InputDecoration(label: Text('Email')),
                        ),
                        const SizedBox(height: 15),
                        const TextField(
                          decoration: InputDecoration(label: Text('Password')),
                        ),
                        const SizedBox(height: 15),
                        MaterialButton(
                          onPressed: () {},
                          child: const Text("Sign Up",
                              style: TextStyle(fontSize: 18)),
                          minWidth: double.infinity,
                          height: 52,
                          elevation: 32,
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 16),
                            primary: Colors.grey,
                          ),
                          onPressed: () {
                            Get.toNamed(RoutesClass.getLoginRoute());
                          },
                          child: const Text('Old user? Login'),
                        ),
                      ],
                    )),
              )),
            ],
          ),
        )),
      ),
    );
  }
}
