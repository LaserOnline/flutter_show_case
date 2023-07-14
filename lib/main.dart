import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'module/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      getPages: AppRoutes.routes,
    );
  }
}
