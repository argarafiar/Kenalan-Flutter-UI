import 'package:get/get.dart';

class Controller extends GetxController {
  var obsecureText = true.obs;
  var username = ''.obs;
  var fullname = ''.obs;
  var email = ''.obs;
  var password = ''.obs;

  void switches() {
    obsecureText.value = !obsecureText.value;
  }

  bool auth() {
    if (username == 'admin' && password == 'admin') {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    username.value = '';
    password.value = '';
  }
}
