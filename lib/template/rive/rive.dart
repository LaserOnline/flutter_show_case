import 'package:flutter/material.dart';
import '../../module/widget/AppBar.dart';
import '../../module/widget/RouterPage.dart';
import '../../module/style/color/StylesColors.dart';
import '../../module/style/font/Font.dart';

class RivePage extends StatelessWidget {
  const RivePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarPage("Rive Animation", TextStyleFontAppbar, Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 01",
                  Page: "rive01",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 02",
                  Page: "rive02",
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
