import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../module/controller/prodouct.controller.dart';

class ProductDetails extends StatelessWidget {
  int index;
  ProductDetails({required this.index, super.key});
  final productController = Get.put(
    ProdouctController(),
  );

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.grey.shade700,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: InkWell(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.grey.shade700,
                            size: height * 0.05,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.grey.shade700,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: InkWell(
                          onTap: () => print("Event"),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: height * 0.05,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // *

              Container(
                height: height * 0.4,
                width: width,
                color: Colors.grey.shade100,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: width * 2,
                        child: Image.asset(
                          "${productController.prodoucts[index].image}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nike",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: (width + height) * 0.07,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height * 0.010,
                  width: width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius:
                        BorderRadius.circular(8.0), // ค่า radius ที่คุณต้องการ
                  ),
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${productController.prodoucts[index].name}",
                          style: TextStyle(
                            fontSize: (width + height) * 0.03,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.monetization_on,
                                color: Colors.red,
                                size: height * 0.05,
                              ),
                            ),
                            Text(
                              "${productController.prodoucts[index].price}",
                              style: TextStyle(
                                fontSize: (width + height) * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: AutoSizeText(
                    "${productController.prodoucts[index].detail}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: (width + height) * 0.02,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
