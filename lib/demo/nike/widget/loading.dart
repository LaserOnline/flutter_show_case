import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // ignore: prefer_const_constructors
        child: Center(
          child: const CircularProgressIndicator(
            strokeWidth: 10,
          ),
        ),
      ),
    );
  }
}
