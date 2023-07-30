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
                // * Demo
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "App Demo",
                  Page: "demo",
                  Width: width,
                ),
                // * Demo

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
                  Page: "pin",
                  Width: width,
                ),
                // * Pin

                // * Appbar
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Appbar UI",
                  Page: "appbar",
                  Width: width,
                ),
                // * Appbar

                // * Chip
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Chip UI",
                  Page: "chip",
                  Width: width,
                ),
                // * Chip

                // * Slidable
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Slidable",
                  Page: "slidable",
                  Width: width,
                ),
                // * Slidable

                //  * Rive
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Rive",
                  Page: "rive",
                  Width: width,
                ),
                //  * Rive
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.purple[100],
    );
  }
}
