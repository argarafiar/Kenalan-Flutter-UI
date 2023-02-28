import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetPosts extends StatelessWidget {
  const BottomSheetPosts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ListView(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 2,
                color: Colors.grey,
              ),
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.bookmark,
              color: Colors.black,
              size: 30,
            ),
            title: Text("Save Post"),
            onTap: () {
              Get.snackbar(
                "Success",
                "Post saved",
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.blue,
                colorText: Colors.white,
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.send,
              color: Colors.black,
              size: 30,
            ),
            title: Text("Send to..."),
            onTap: () {
              Get.dialog(
                SimpleDialog(
                  title: Text('Daftar Teman'),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        children: [
                          SendListSection(username: "originul"),
                          SendListSection(username: "dimas05"),
                          SendListSection(username: "kitabisa"),
                          SendListSection(username: "belumbisa32"),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.report,
              color: Colors.black,
              size: 30,
            ),
            title: Text("Report Post"),
            onTap: () {
              Get.defaultDialog(
                title: "Report Post",
                content: Text("Are you sure you want to report this post?"),
                textConfirm: "Yes",
                textCancel: "No",
                confirmTextColor: Colors.white,
                // cancelTextColor: Colors.white,
                buttonColor: Colors.blue,
                onConfirm: () {
                  Get.back();
                  Get.snackbar(
                    "Success",
                    "Post reported",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.blue,
                    colorText: Colors.white,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class SendListSection extends StatelessWidget {
  const SendListSection({
    required this.username,
  });

  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50 / 2),
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://picsum.photos/id/1/200/300",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 10),
                Text(this.username),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
                Get.snackbar(
                  "Success",
                  "Post sent to ${this.username}",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.blue,
                  colorText: Colors.white,
                );
              },
              child: Text("Send"),
            ),
          ],
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
