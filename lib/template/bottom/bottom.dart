import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../module/style/font/Font.dart';
import '../../module/widget/AppBar.dart';

class BottomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarPage("Bottom", TextStyleFontAppbar, Colors.black),
      backgroundColor: Colors.amber,
    );
  }
}
