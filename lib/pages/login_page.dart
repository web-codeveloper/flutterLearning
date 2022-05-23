import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 174, 247, 241),
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          height: 640,
          width: 1080,
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
                    padding: const EdgeInsets.all(100.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Login',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: Colors.blueAccent)),
                        const SizedBox(height: 28),
                        const TextField(
                          decoration: InputDecoration(label: Text('Email')),
                        ),
                        const SizedBox(height: 24),
                        const TextField(
                          decoration: InputDecoration(label: Text('Password')),
                        ),
                        const SizedBox(height: 24),
                        Align(
                          alignment: Alignment.topRight,
                          child: MaterialButton(
                            onPressed: () {},
                            child: const Text("Forgot password?"),
                          ),
                        ),
                        const SizedBox(height: 35),
                        MaterialButton(
                          onPressed: () {},
                          child: const Text("Login"),
                          minWidth: double.infinity,
                          height: 52,
                          elevation: 32,
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                        ),
                        const SizedBox(height: 40),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 16),
                            primary: Colors.grey,
                          ),
                          onPressed: () {},
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
