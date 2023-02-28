import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class FormSection extends StatelessWidget {
  FormSection({
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
        TextFormField(
          textInputAction: TextInputAction.next,
          onChanged: (value) {
            if (this.text == 'Username') {
              controller.username.value = value;
            } else if (this.text == 'Full name') {
              controller.fullname.value = value;
            } else if (this.text == 'E-mail') {
              controller.email.value = value;
            }
          },
          decoration: InputDecoration(
            hintText: this.text,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: Icon(this.icon),
            //kecilkan padding
            contentPadding: EdgeInsets.all(10),
          ),
        ),
      ],
    );
  }
}
