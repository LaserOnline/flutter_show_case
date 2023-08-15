import 'dart:async';
import 'package:get/get.dart';

void SplashScreen() {
  int seconds = 3;

  Timer(Duration(seconds: seconds), () {
    RouterHome();
  });
}

void RouterHome() {
  Get.offAllNamed('/home');
}
