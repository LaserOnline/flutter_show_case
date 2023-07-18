import 'package:flutter/material.dart';

class Chip06 extends StatelessWidget {
  const Chip06({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: const BorderSide(
          color: Colors.black,
          width: 5,
        ),
      ),
      color: Colors.black,
      child: const Chip(
        label: Text(
          "Material Chip 06",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 20,
          ),
        ),
        labelPadding: EdgeInsets.all(10),
        padding: EdgeInsets.all(4),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        avatar: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/236x/2b/36/65/2b36657bc4282a02f81bca24a2cf9ba4.jpg"),
        ),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
