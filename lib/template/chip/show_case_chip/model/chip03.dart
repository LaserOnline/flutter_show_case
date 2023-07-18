import 'package:flutter/material.dart';

class Chip03 extends StatefulWidget {
  const Chip03({Key? key}) : super(key: key);

  @override
  State<Chip03> createState() => _Chip03State();
}

class _Chip03State extends State<Chip03> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChoiceChip(
        label: const Text(
          "Widget Choice Chip 03",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        avatar: Image.network(
            "https://wallpapers.com/images/hd/cute-anime-profile-pictures-k6h3uqxn6ei77kgl.jpg"),
        elevation: 3,
        selected: isSelected,
        selectedColor: Colors.amber,
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
