import 'package:flutter/material.dart';

class Chip02 extends StatefulWidget {
  const Chip02({Key? key}) : super(key: key);

  @override
  State<Chip02> createState() => _Chip02State();
}

class _Chip02State extends State<Chip02> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChoiceChip(
        label: const Text(
          "Widget Choice Chip 02",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        selected: isSelected,
        selectedColor: Colors.black,
        onSelected: (newState) {
          setState(() {
            isSelected = newState;
            print("isSelected ${isSelected} \n newState ${newState}");
          });
        },
      ),
    );
  }
}
