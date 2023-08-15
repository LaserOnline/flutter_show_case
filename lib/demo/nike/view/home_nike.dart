import 'package:flutter/material.dart';
import '../widget/intro.dart';
import '../widget/search.dart';

class HomeNike extends StatelessWidget {
  const HomeNike({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        centerTitle: true,
        title: const Text(
          "Nike",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IntroPage(),
          const SizedBox(
            height: 25,
          ),
          Search(),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              "Prodouct",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
