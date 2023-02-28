import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class FormPasswordSection extends StatelessWidget {
  FormPasswordSection({
    required this.text,
    required this.icon,
  });

  final controller = Get.put(Controller());

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.text,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(height: 10),
        Obx(
          () {
            return TextFormField(
              onChanged: (value) {
                if (this.text == 'Password') {
                  controller.password.value = value;
                } else if (this.text == 'Confirm Password') {
                  controller.password.value = value;
                }
              },
              obscureText: controller.obsecureText.value,
              decoration: InputDecoration(
                hintText: this.text,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.switches();
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
                //kecilkan padding
                contentPadding: EdgeInsets.all(10),
              ),
            );
          },
        ),
      ],
    );
  }
}
