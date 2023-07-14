import 'package:flutter/material.dart';
import "../style/color/StylesColors.dart";
import "../style/font/Font.dart";

AppbarPage(String title, TextStyle textstyle, Color colors) => AppBar(
      centerTitle: true,
      title: Text(
        "${title}",
        style: textstyle,
      ),
      backgroundColor: colors,
    );

AppbarViewCode(String title) => AppBar();
