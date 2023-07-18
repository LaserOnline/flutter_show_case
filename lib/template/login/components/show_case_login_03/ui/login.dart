import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(248, 19, 19, 19),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 200,
                  alignment: Alignment.topCenter,
                ),
                Stack(
                  children: [
                    Lottie.asset("assets/lottie/show_case_login_03.json"),
                    Center(
                      child: Container(
                        width: 300,
                        child: Form(
                          child: Column(
                            children: [
                              TextFormField(
                                controller: EmailController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 252, 255, 254)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 252, 255, 254)),
                                  ),
                                  filled: true,
                                  hintText: 'Email',
                                  hintStyle: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 254, 255)),
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Color.fromARGB(255, 245, 243, 243),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                autofillHints: [AutofillHints.email],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 246, 248, 248)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: PasswordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 252, 255, 254)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color:
                                            Color.fromARGB(255, 252, 255, 254)),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 254, 255)),
                                  prefixIcon: const Icon(
                                    Icons.key,
                                    color: Color.fromARGB(255, 248, 244, 244),
                                  ),
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                autofillHints: [AutofillHints.password],
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 246, 248, 248),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 238, 235, 235),
                                      width: 2.0,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 98, 86, 202),
                                ),
                                height: 40,
                                width: 150,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: const AutoSizeText(
                                        "Sign In",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Color.fromARGB(255, 29, 1, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
