import 'package:flutter/material.dart';
import 'package:flutter_show_case/demo/nike/module/controller/prodouct.controller.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../widget/Loading.dart';
import '../widget/list.product.dart';
import '../widget/profile.dart';
import '../widget/promo.dart';

class HomeNike extends StatelessWidget {
  HomeNike({super.key});

  final productController = Get.put(ProdouctController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Color.fromARGB(255, 248, 248, 248),
                  centerTitle: true,
                  leading: Container(),
                  title: const Text(
                    "Nike",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: const [
                    MyProfile(),
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Promo(),
                  ),
                  expandedHeight: 230,
                ),
                SliverToBoxAdapter(
                  child: Obx(() {
                    if (productController.prodoucts.isEmpty)
                      // ignore: curly_braces_in_flow_control_structures
                      return const Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Loading(),
                      );
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListProduct(
                            axis: false,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
