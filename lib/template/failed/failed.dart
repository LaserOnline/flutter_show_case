import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../module/widget/RouterPage.dart';
import '../../module/style/font/Font.dart';
import '../../module/widget/AppBar.dart';

class ScreenFailed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppbarPage("ShowCase Failed", TextStyleFontAppbar, Colors.black),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: Colors.white,
                  Title: "Template 01",
                  Page: "failed01",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: Colors.white,
                  Title: "Template 02",
                  Page: "failed02",
                  Width: width,
                ),
                RouterPage(
                  TextStyle: TextStyleButton,
                  Colors: Colors.white,
                  Title: "Template 03",
                  Page: "failed03",
                  Width: width,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
