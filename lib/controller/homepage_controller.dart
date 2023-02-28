import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePageController extends GetxController {
  var color = Colors.grey.obs;
  var like = "20 likes".obs;

  void liked() {
    if (color.value == Colors.grey) {
      color.value = Colors.pink;
      like.value = "21 likes";
    } else {
      color.value = Colors.grey;
      like.value = "20 likes";
    }
  }
}
