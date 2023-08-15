import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../module/style/color/StylesColors.dart';
import '../module/style/font/Font.dart';
import '../module/widget/AppBar.dart';
import '../module/widget/RouterPage.dart';

class DemoPageHome extends StatelessWidget {
  const DemoPageHome({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarPage("Appbar", TextStyleFontAppbar, Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Nike",
                  Page: "splash_nike",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Tesla",
                  Page: "splash_tesla",
                  Width: width,
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
