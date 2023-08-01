import 'dart:async';
import 'package:get/get.dart';

int time_otp = 15;
Timer? timer;
void ControllerClear() async {
  timer?.cancel();
  timer = null;
  await Future.delayed(Duration.zero);
  Get.back();
}

void StartAgain() async {
  if (time_otp == 0) time_otp = 15;
}

void Clear() {
  timer?.cancel();
  timer = null;
  time_otp = 0;
}
