import 'package:flutter/material.dart';

AppbarPage(String title, TextStyle textstyle, Color colors) => AppBar(
      centerTitle: true,
      title: Text(
        "${title}",
        style: textstyle,
      ),
      backgroundColor: colors,
    );
