import 'package:flutter/material.dart';
import 'package:flutter_show_case/demo/nike/module/controller/prodouct.controller.dart';
import 'package:get/get.dart';
import '../../../module/Image/Image.dart';

final productController = Get.put(
  ProdouctController(),
);

// * MyProfile
class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.0, top: 5),
      child: GestureDetector(
        onTap: () {
          Get.to(Setting());
        },
        child: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(IconImage.user),
        ),
      ),
    );
  }
}

// * MyProfile

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.12,
              ),
              child: Center(
                child: Container(
                  child: const Text(
                    "My Profile",
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.35,
              ),
              child: Center(
                child: Container(
                  width: width * 0.8,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.grey.shade200,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: width * 0.05,
                      right: width * 0.05,
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Get.offAllNamed('/home');
                          productController.Clear();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.black,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(right: 30, left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Logout",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.25,
              ),
              child: Center(
                child: Container(
                  width: width * 0.30,
                  height: height * 0.15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 1,
                        spreadRadius: 5,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(IconImage.user),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.72,
              ),
              child: Center(
                child: Container(
                  width: width * 0.8,
                  height: height * 0.10,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.grey.shade200),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 30, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.loyalty_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Developer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.60,
              ),
              child: Center(
                child: Container(
                  width: width * 0.8,
                  height: height * 0.10,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.grey.shade200),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 30, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.account_circle_sharp,
                          color: Colors.white,
                        ),
                        Text(
                          "FullStack",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.84,
              ),
              child: Center(
                child: Container(
                  width: width * 0.8,
                  height: height * 0.10,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.grey.shade200),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(right: 30, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: Colors.white,
                        ),
                        Text(
                          "096-851-4345",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 32, 32, 32),
    );
  }
}
