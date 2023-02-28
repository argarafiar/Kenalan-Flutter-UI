import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerHomePage extends StatelessWidget {
  const DrawerHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      backgroundColor: Color(0xff5666CC),
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Color(0xff5666CC),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(80 / 2),
                    image: DecorationImage(
                      image:
                          NetworkImage('https://picsum.photos/id/500/200/300'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "argarafiar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 524,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                // matikan scroll
                children: [
                  ListTileDrawer(icon: Icons.home_outlined, title: "Home"),
                  ListTileDrawer(
                      icon: Icons.account_circle_outlined, title: "Profile"),
                  ListTileDrawer(icon: Icons.search, title: "Search"),
                  ListTileDrawer(icon: Icons.add_box_outlined, title: "Post"),
                  ListTileDrawer(
                      icon: Icons.chat_bubble_outline, title: "Chat"),
                  Container(
                    width: 250,
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Color(0xff5666CC),
                    ),
                    title: Text("Settings"),
                    onTap: () {
                      Get.back();
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Color(0xff5666CC),
                    ),
                    title: Text("Logout"),
                    onTap: () {
                      Get.offAllNamed('/login');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListTileDrawer extends StatelessWidget {
  ListTileDrawer({
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        this.icon,
        color: Color(0xff5666CC),
      ),
      title: Text(this.title),
      onTap: () {
        if (this.title == "Home") {
          Get.toNamed('/home');
        } else if (this.title == "Profile") {
          Get.toNamed('/profile');
        } else if (this.title == "Search") {
          Get.toNamed('/search');
        } else if (this.title == "Post") {
          Get.toNamed('/post');
        } else if (this.title == "Chat") {
          Get.toNamed('/chat');
        }
      },
    );
  }
}
