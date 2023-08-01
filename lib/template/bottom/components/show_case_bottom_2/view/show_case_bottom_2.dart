import 'package:flutter/material.dart';
import '../view_model/controller.dart';
// * Package
// * https://pub.dev/packages/google_nav_bar
import 'package:google_nav_bar/google_nav_bar.dart';

// * Package
class ShowCaseBottom2 extends StatefulWidget {
  const ShowCaseBottom2({super.key});

  @override
  State<ShowCaseBottom2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ShowCaseBottom2> {
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
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (height + width) * 0.005,
          vertical: (height + width) * 0.010,
        ),
        child: GNav(
          gap: (height + width) * 0.005,
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
          backgroundColor: Colors.black,
          color: Colors.white,
          activeColor: Colors.grey[300],
          tabBackgroundColor: Colors.grey.shade900,
          duration: Duration(milliseconds: 500),
          haptic: true,
          tabBorderRadius: 30,
          curve: Curves.easeOutExpo,
        ),
      ),
    );
  }

  @override
  void dispose() {
    Clear();
    super.dispose();
  }
}
