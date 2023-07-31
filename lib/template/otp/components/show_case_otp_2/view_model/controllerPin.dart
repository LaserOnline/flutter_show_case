import 'dart:async';
import 'package:get/get.dart';

int time_otp = 60;
Timer? timer;

void ControllerClear() async {
  timer?.cancel();
  Get.back();
}

void StartAgain() async {
  if (time_otp == 0) time_otp = 60;
}
