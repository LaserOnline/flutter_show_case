import 'package:flutter/material.dart';
import '../view_model/controller.dart';
// * https://pub.dev/packages/google_nav_bar
import 'package:google_nav_bar/google_nav_bar.dart';

class ShowCaseBottom3 extends StatefulWidget {
  const ShowCaseBottom3({super.key});

  @override
  State<ShowCaseBottom3> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowCaseBottom3> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "${page}",
            style: TextStyle(
                fontSize: (height + width) * 0.4,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (height + width) * 0.005,
          vertical: (height + width) * 0.010,
        ),
        child: GNav(
          gap: (height + width) * 0.001,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite_border,
              text: "Likes",
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
            ),
            GButton(
              icon: Icons.settings,
              text: "Setting",
            ),
          ],
          onTabChange: (index) {
            setState(() {
              page = index;
            });
            print(index);
          },
          color: Colors.grey.shade600,
          iconSize: (height + width) * 0.020,
          activeColor: Colors.black,
          tabActiveBorder: Border.all(
            color: Colors.white,
            width: (height + width) * 0.002,
          ),
          tabShadow: const [
            BoxShadow(
              color: Colors.white,
              offset: Offset(2.0, 2.0),
              blurRadius: 4,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  @override
  void dispose() {
    Clear();
    super.dispose();
  }
}
