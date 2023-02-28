import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/bottom_nav.dart';

class PostPage extends StatelessWidget {
  PostPage({super.key});

  final controller = Get.put(ControllerPost());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //matikan efek scroll jika mentok
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Make a post",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/400/500'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconsEdit(
                icon: Icons.sunny,
                text: "Exposure",
                color: Colors.black,
              ),
              IconsEdit(
                icon: Icons.contrast,
                text: "Contrast",
                color: Colors.grey,
              ),
              IconsEdit(
                icon: Icons.bar_chart,
                text: "Warmth",
                color: Colors.grey,
              ),
              IconsEdit(
                icon: Icons.palette,
                text: "Highlights",
                color: Colors.grey,
              ),
              IconsEdit(
                icon: Icons.menu_open,
                text: "Shadow",
                color: Colors.grey,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Obx(
              () {
                return Slider(
                  value: controller._value.value,
                  min: 0.0,
                  max: 100.0,
                  label: null,
                  // divisions: 100,
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey,
                  onChanged: (double newValue) {
                    controller.gantiValue(newValue);
                  },
                );
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xff5666CC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ControllerPost extends GetxController {
  var _value = 0.0.obs;

  void gantiValue(double value) {
    _value.value = value;
  }
}

class IconsEdit extends StatelessWidget {
  IconsEdit({
    required this.text,
    required this.icon,
    required this.color,
  });

  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(this.icon, color: this.color),
        SizedBox(height: 5),
        Text(
          this.text,
          style: TextStyle(fontSize: 12, color: this.color),
        ),
        SizedBox(height: 5),
        Container(
          //lebar responsive
          width: MediaQuery.of(context).size.width * 20 / 100,
          height: 1,
          color: this.color,
        ),
      ],
    );
  }
}
