import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  int index;
  ProductDetails({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${index}"),
      ),
    );
  }
}
