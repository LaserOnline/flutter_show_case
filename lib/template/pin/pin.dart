import 'package:flutter/material.dart';
import '../../module/style/color/StylesColors.dart';
import '../../module/style/font/Font.dart';
import '../../module/widget/AppBar.dart';
import '../../module/widget/RouterPage.dart';

class Pin extends StatelessWidget {
  const Pin({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarPage("Pin", TextStyleFontAppbar, Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 01",
                  Page: "pin1",
                  Width: width,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 1, 1, 1),
    );
  }
}
