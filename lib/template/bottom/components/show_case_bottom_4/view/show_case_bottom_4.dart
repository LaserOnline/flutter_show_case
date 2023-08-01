import 'package:flutter/material.dart';
import '../view_model/controller.dart';
// * Package
// * https://pub.dev/packages/curved_navigation_bar/install
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ShowCaseBottom4 extends StatefulWidget {
  const ShowCaseBottom4({super.key});

  @override
  State<ShowCaseBottom4> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowCaseBottom4> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "${page}",
            style: TextStyle(
                fontSize: (height + width) * 0.5, color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          Icon(
            Icons.home,
          ),
          Icon(
            Icons.message,
          ),
          Icon(
            Icons.search,
          ),
          Icon(
            Icons.call,
          ),
        ],
        height: (height + width) * 0.05,
        index: page,
        onTap: (index) {
          page = index;
          setState(() {});
        },
        backgroundColor: Colors.deepPurple,
        animationDuration: const Duration(milliseconds: 300),
        color: Colors.deepPurple.shade400,
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.decelerate,
      ),
      backgroundColor: Colors.deepPurple,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Clear();
    super.dispose();
  }
}
