import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../module/images/Logo.dart';
import '../module/controller/prodouct.controller.dart';
import '../view/product_details.dart';

final productController = Get.put(
  ProdouctController(),
);

class InterImageRow extends StatelessWidget {
  int index;
  InterImageRow({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 10,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Get.log("${index}");
            Get.to(ProductDetails(
              index: index,
            ));
          },
          child: Column(
            children: [
              Container(
                height: height / 6,
                color: Colors.amber,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(
                    Logo.NikeImages1,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Text(
                              "HelloWorld",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 80,
                            ),
                            child: Text(
                              "20000000",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              left: 10,
                              right: 10,
                            ),
                            child: Text(
                              "Xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InterImageColum extends StatelessWidget {
  int index;
  InterImageColum({required this.index, super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 10,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Get.log("${index}");
            Get.to(ProductDetails(
              index: index,
            ));
          },
          child: Column(
            children: [
              Container(
                height: height / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.grey.shade100,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.asset(
                    "${productController.prodoucts[index].image}",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: Text(
                              "${productController.prodoucts[index].name}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 100,
                              top: 10,
                            ),
                            child: Icon(
                              Icons.attach_money,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 10,
                            ),
                            child: Text(
                              "${productController.prodoucts[index].price}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
