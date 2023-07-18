import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:lottie/lottie.dart';
import '../model/model.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Register> {
  String dropdownvalue = 'Normal';
  var Item = new ButtonRegister();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController UsernameController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  final TextEditingController CheckPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 93, 87, 175),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 150,
                  alignment: Alignment.topCenter,
                ),
                Stack(
                  children: [
                    Lottie.asset("assets/lottie/show_case_register_03.json"),
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
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  fillColor: Color.fromARGB(206, 248, 248, 250),
                                  filled: true,
                                  hintText: 'Email',
                                  hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 3, 3, 3)),
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Color.fromARGB(255, 3, 3, 3),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                autofillHints: [AutofillHints.email],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 5, 5, 5)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: UsernameController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color: Color.fromARGB(255, 2, 2, 2)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color: Color.fromARGB(255, 2, 2, 2)),
                                  ),
                                  fillColor: Color.fromARGB(206, 248, 248, 250),
                                  filled: true,
                                  hintText: 'Username',
                                  hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 8, 8, 8)),
                                  prefixIcon: const Icon(
                                    Icons.account_circle,
                                    color: Color.fromARGB(255, 5, 5, 5),
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                autofillHints: [AutofillHints.email],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)),
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
                                        color: Color.fromARGB(255, 7, 7, 7)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  fillColor: Color.fromARGB(206, 248, 248, 250),
                                  filled: true,
                                  hintText: 'Password',
                                  hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  prefixIcon: const Icon(
                                    Icons.key,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                autofillHints: [AutofillHints.password],
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: CheckPassController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color: Color.fromARGB(255, 10, 10, 10)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 3,
                                        color: Color.fromARGB(255, 12, 12, 12)),
                                  ),
                                  fillColor: Color.fromARGB(206, 248, 248, 250),
                                  filled: true,
                                  hintText: 'Confirm Password',
                                  hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                  prefixIcon: const Icon(
                                    Icons.key,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                autofillHints: [AutofillHints.password],
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 2, 2, 2),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 238, 235, 235),
                                          width: 2.0,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 130, 226, 21),
                                    ),
                                    height: 40,
                                    width: 150,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          child: const AutoSizeText(
                                            "Submit",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color:
                                                  Color.fromARGB(255, 29, 1, 1),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 238, 235, 235),
                                          width: 2.0,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color.fromARGB(255, 130, 226, 21),
                                    ),
                                    height: 40,
                                    width: 100,
                                    child: DropdownButton(
                                      value: dropdownvalue,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      items: Item.items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text(items),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ],
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
