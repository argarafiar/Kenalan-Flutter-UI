import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/chat_controller.dart';

class ButtonChat extends StatelessWidget {
  ButtonChat({
    required this.id,
  });

  final controller = Get.put(ControllerChat());
  final int id;

  // Future Pages() async {
  //   print("id: " + this.id.toString());
  //   if (this.id == 1) {
  //     controller.SetButtonChat();
  //   } else {
  //     controller.SetButtonCalls();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //jika page ini chat maka pindah ke page lain
        if (this.id == 1) {
          controller.SetButtonCalls();
          Get.toNamed('/calls');
        } else {
          controller.SetButtonChat();
          Get.toNamed('/chat');
        }
      },
      child: Stack(
        children: [
          Container(
            width: Get.width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Obx(
            () {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: Get.width * 0.444,
                    height: 50,
                    decoration: BoxDecoration(
                      color: controller.colorBackground1.value,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Messages",
                        style: TextStyle(
                          fontSize: 12,
                          color: controller.colorText1.value,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width * 0.444,
                    height: 50,
                    decoration: BoxDecoration(
                      color: controller.colorBackground2.value,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Calls",
                        style: TextStyle(
                          fontSize: 12,
                          color: controller.colortext2.value,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
