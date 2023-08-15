import 'package:flutter/material.dart';

class MyButtonTapped extends StatelessWidget {
  final IconData icon;
  const MyButtonTapped({required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300],
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(97, 97, 97, 1),
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(224, 224, 224, 1),
              Color.fromRGBO(179, 179, 179, 1),
              Color.fromRGBO(153, 153, 153, 1),
              Color.fromRGBO(130, 130, 130, 1),
            ],
            stops: [0.1, 0.3, 0.8, 1],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          // ignore: sort_child_properties_last
          child: Icon(
            icon,
            size: 35,
            color: Colors.grey[700],
          ),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(206, 206, 206, 1),
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Color.fromRGBO(97, 97, 97, 1),
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(56, 56, 56, 1),
                Color.fromRGBO(97, 97, 97, 1),
                Color.fromRGBO(130, 130, 130, 1),
                Color.fromRGBO(224, 224, 224, 1),
              ],
              stops: [0, 0.1, 0.3, 1],
            ),
          ),
        ),
      ),
    );
  }
}
