import 'package:flutter/material.dart';

import '../../module/style/color/StylesColors.dart';
import '../../module/style/font/Font.dart';
import '../../module/widget/AppBar.dart';
import '../../module/widget/RouterPage.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarPage("OTP Screen", TextStyleFontAppbar, Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 01",
                  Page: "otp1",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: StylesColors.white,
                  Title: "Template 02",
                  Page: "otp2",
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
