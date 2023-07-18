import 'package:flutter/material.dart';

class Chip01 extends StatelessWidget {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chip(
        label: const Text("This is Widget Chip 01"),
        onDeleted: () {
          print("D E L E T E");
        },
      ),
    );
  }
}
