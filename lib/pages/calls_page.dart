import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/chat_story_section.dart';
import '../widgets/button_chat.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/calls_box_section.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          physics: PageScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Calls",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.videocam_rounded,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                hintText: "Search here",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(55 / 2),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "New",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                ChatStorySection(username: "John"),
                ChatStorySection(username: "Doel"),
                ChatStorySection(username: "Origin"),
                ChatStorySection(username: "Mira"),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ButtonChat(id: 2),
            SizedBox(
              height: 20,
            ),
            CallsBox(
              username: "mario05",
              time: "10:00 PM",
              status: "mis",
            ),
            CallsBox(
              username: "john",
              time: "12:00 PM",
              status: "out",
            ),
            CallsBox(
              username: "doel65",
              time: "30:50 PM",
              status: "in",
            ),
            CallsBox(
              username: "origin_main",
              time: "20:20 PM",
              status: "in",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(idx: 3),
    );
  }
}
