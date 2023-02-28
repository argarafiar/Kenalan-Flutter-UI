import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ControllerChat extends GetxController {
  var colorText1 = Colors.black.obs;
  var colorBackground1 = Colors.white.obs;
  var colortext2 = Colors.white.obs;
  var colorBackground2 = Colors.black.obs;

  void SetButtonChat() {
    colorText1.value = Colors.black;
    colorBackground1.value = Colors.white;
    colortext2.value = Colors.white;
    colorBackground2.value = Colors.black;
  }

  void SetButtonCalls() {
    colorText1.value = Colors.white;
    colorBackground1.value = Colors.black;
    colortext2.value = Colors.black;
    colorBackground2.value = Colors.white;
  }
}
