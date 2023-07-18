import 'package:flutter/material.dart';

class Appbar01 extends StatelessWidget {
  const Appbar01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Appbar Widget",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            print("T E S T");
          },
          icon: const Icon(Icons.menu_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("T E S T");
            },
            icon: const Icon(
              Icons.notifications,
            ),
          )
        ],
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )),
      ),
    );
  }
}
