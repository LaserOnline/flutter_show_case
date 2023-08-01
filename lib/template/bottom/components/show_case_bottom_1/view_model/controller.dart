import 'package:get/get.dart';

bool buttonPressed1 = false;
bool buttonPressed2 = false;
bool buttonPressed3 = false;
bool buttonPressed4 = false;

void NavigateBack() {
  Get.back();
}

void Clear() {
  buttonPressed1 = false;
  buttonPressed2 = false;
  buttonPressed3 = false;
  buttonPressed4 = false;
}
