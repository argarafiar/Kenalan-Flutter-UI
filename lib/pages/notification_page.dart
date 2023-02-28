import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/list_notification_section.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_open_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          //hapus animasi scroll
          physics: BouncingScrollPhysics(),
          children: [
            Text(
              "Today",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListNotification(
              icons: Icons.favorite,
              name: "John Doe",
              text: "Liked your post",
            ),
            ListNotification(
              icons: Icons.mode_comment_sharp,
              name: "argarafiar",
              text: "Commented on your post",
            ),
            ListNotification(
              icons: Icons.mode_comment_sharp,
              name: "altafar",
              text: "Commented on your post",
            ),
            SizedBox(height: 20),
            Text(
              "This week",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ListNotification(
              icons: Icons.favorite,
              name: "John cena",
              text: "Liked your post",
            ),
            ListNotification(
              icons: Icons.favorite,
              name: "Jhonatan",
              text: "Liked your post",
            ),
            SizedBox(height: 20),
            Text(
              "Earlier",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            ListNotification(
              icons: Icons.mode_comment_sharp,
              name: "dea86",
              text: "Commented on your post",
            ),
            ListNotification(
              icons: Icons.favorite,
              name: "ibra_kun",
              text: "Liked your post",
            ),
          ],
        ),
      ),
    );
  }
}
