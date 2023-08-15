import 'package:flutter/material.dart';
import '../../module/widget/RouterPage.dart';
import '../../module/style/font/Font.dart';
import '../../module/style/color/StylesColors.dart';
import '../../module/widget/AppBar.dart';

class Chip extends StatelessWidget {
  const Chip({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarPage("Chip", TextStyleFontAppbar, Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 01",
                  Page: "chip01",
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
