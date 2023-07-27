import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../module/widget/AppBar.dart';
import '../../module/widget/RouterPage.dart';
import '../../module/style/color/StylesColors.dart';
import '../../module/style/font/Font.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarPage("Login", TextStyleFontAppbar, Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 01",
                  Page: "login01",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 02",
                  Page: "login02",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 03",
                  Page: "login03",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 04",
                  Page: "login04",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 05",
                  Page: "login05",
                  Width: width,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.purple[100],
    );
  }
}
