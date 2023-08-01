import 'package:flutter/material.dart';
import 'package:get/get.dart';

TextEditingController pin1 = TextEditingController();
TextEditingController pin2 = TextEditingController();
TextEditingController pin3 = TextEditingController();
TextEditingController pin4 = TextEditingController();

String otp = "";

void FuncCheckDownOTP() {
  otp = '';
  List<TextEditingController> pinControllers = [pin1, pin2, pin3, pin4];
  for (TextEditingController pinController in pinControllers) {
    if (pinController.text.isEmpty && otp.length > 0) {
      otp = otp.substring(0, otp.length - 1);
      print("Down ${otp}");
    }
  }
}

void FuncCheckAddOTP() {
  otp = '';
  List<TextEditingController> pinControllers = [pin1, pin2, pin3, pin4];
  for (TextEditingController pinController in pinControllers) {
    if (pinController.text.isNotEmpty) {
      otp += pinController.text;
      print("Count ${otp}");
    }
  }
}

void Successfully() {
  print(otp);
  if (otp.length == 4) {
    print("Successfully");
    ControllerClear();
  }
}

void ControllerClear() async {
  otp = "";
  pin1.clear();
  pin2.clear();
  pin3.clear();
  pin4.clear();
  Get.back();
}

void Clear() {
  pin1.clear();
  pin2.clear();
  pin3.clear();
  pin4.clear();
}
