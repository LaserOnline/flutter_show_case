import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../model/model.dart';

class ShowCaseLogin02 extends StatelessWidget {
  ShowCaseLogin02({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void singUserIn() async {
    print("${usernameController.text}");
    print("${passwordController.text}");
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: height / 8,
                ),
                const Icon(
                  Icons.android,
                  size: 100,
                ),
                const SizedBox(
                  height: 72,
                ),
                const Text(
                  "Welcome !",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 54,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Webcome back you\'ve been missed!",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyInputData(
                  controller: usernameController,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyInputData(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                SingIn(onTap: singUserIn),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member? Register Now ?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
