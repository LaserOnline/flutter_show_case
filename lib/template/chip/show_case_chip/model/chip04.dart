import 'package:flutter/material.dart';

class Chip04 extends StatelessWidget {
  const Chip04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chip(
        label: const Text(
          "Profile 04",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        avatar: Image.network(
            "https://i.pinimg.com/736x/57/0e/88/570e88630497172421847f3c9a08fa29.jpg"),
        elevation: 3,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
