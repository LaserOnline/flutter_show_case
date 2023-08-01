import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MyButtonPress extends StatelessWidget {
  final IconData icon;
  const MyButtonPress({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Icon(
          icon,
          size: 37,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(109, 109, 109, 1),
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(128, 128, 128, 1),
              Color.fromRGBO(179, 179, 179, 1),
              Color.fromRGBO(204, 204, 204, 1),
              Color.fromRGBO(224, 224, 224, 1),
            ],
            stops: [0.1, 0.3, 0.8, 1],
          ),
        ),
      ),
    );
  }
}
