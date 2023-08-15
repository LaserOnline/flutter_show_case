import 'package:flutter/material.dart';
import 'package:flutter_show_case/demo/nike/module/controller/prodouct.controller.dart';
import 'package:get/get.dart';

import 'inter_page.dart';

class ListProduct extends StatelessWidget {
  final bool axis;
  ListProduct({required this.axis});
  final productController = Get.put(
    ProdouctController(),
  );
  @override
  Widget build(BuildContext context) => axis
      ? Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3.5,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: 400,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
            itemCount: productController.prodoucts.length,
            itemBuilder: ((context, index) {
              return InterImageRow(
                index: index,
              );
            }),
          ),
        )
      : Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
            ),
            itemCount: productController.prodoucts.length,
            itemBuilder: ((context, index) {
              return InterImageColum(
                index: index,
              );
            }),
          ),
        );
}
