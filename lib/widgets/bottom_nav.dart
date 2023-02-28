import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/search_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class BottomNav extends StatelessWidget {
  BottomNav({
    required this.idx,
  });

  late int idx;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      // backgroundColor: Color(0xff5666CC),
      backgroundColor: Colors.white,
      color: Color(0xff5666CC),
      activeColor: Color.fromARGB(255, 49, 58, 117),
      initialActiveIndex: idx,
      style: TabStyle.fixedCircle,
      elevation: 1,
      onTap: (index) {
        if (index == 0) {
          Get.toNamed('/home');
        } else if (index == 1) {
          Get.toNamed('/search');
        } else if (index == 2) {
          Get.toNamed('/post');
        } else if (index == 3) {
          Get.toNamed('/chat');
        } else if (index == 4) {
          Get.toNamed('/profile');
        }
      },
      items: [
        TabItem(icon: Icons.home),
        TabItem(icon: Icons.search),
        TabItem(icon: Icons.add),
        TabItem(icon: Icons.message),
        TabItem(icon: Icons.people),
      ],
    );
  }
}
