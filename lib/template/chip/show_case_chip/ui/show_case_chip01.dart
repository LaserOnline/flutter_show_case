import 'package:flutter/material.dart';
import '../model/chip01.dart';
import '../model/chip02.dart';
import '../model/chip03.dart';
import '../model/chip04.dart';
import '../model/chip05.dart';
import '../model/chip06.dart';

class ShowCaseChip01 extends StatelessWidget {
  const ShowCaseChip01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Chip01(),
            Chip02(),
            Chip03(),
            Chip04(),
            Chip05(),
            Chip06(),
          ],
        ),
      ),
    );
  }
}
