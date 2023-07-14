import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../module/widget/AppBar.dart';
import '../../module/widget/RouterPage.dart';
import '../../module/style/color/StylesColors.dart';
import '../../module/style/font/Font.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.purple[100],
    );
  }
}
