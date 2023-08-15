import 'package:flutter/material.dart';

import 'list.product.dart';
import 'search.dart';

class DraggableScrollable extends StatelessWidget {
  const DraggableScrollable({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return DraggableScrollableSheet(
      maxChildSize: 1.0,
      minChildSize: 0.3,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            height: height,
            color: Colors.black87,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 5,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.white,
                    ),
                  ),
                ),
                Search(),
                ListProduct(
                  axis: true,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
