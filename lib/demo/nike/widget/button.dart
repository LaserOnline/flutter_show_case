import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final IconData icon;
  const MyButton({required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(30),
        ),
        width: (height + width) * 0.12,
        height: (height + width) * 0.060,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
