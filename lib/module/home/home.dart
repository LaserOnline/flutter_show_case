import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widget/RouterPage.dart';
import '../style/font/Font.dart';
import '../style/color/StylesColors.dart';
import '../widget/AppBar.dart';

class HomeShowCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:
          AppbarPage("ShowCase Template", TextStyleFontAppbar, Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                // * Login Page
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Login UI",
                  Page: "login",
                  Width: width,
                ),
                // * Login Page

                // * Bottom Page
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Bottom UI",
                  Page: "bottom",
                  Width: width,
                ),
                // * Bottom Page

                // * Pin
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Screen Pin UI",
                  Page: "bottom",
                  Width: width,
                ),
                // * Pin
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.purple[100],
    );
  }
}