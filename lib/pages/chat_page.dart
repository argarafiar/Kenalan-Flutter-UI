import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/chat_story_section.dart';
import '../widgets/button_chat.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/chat_box_section.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

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
                  width: 10,
                ),
                Text(
                  "Inbox",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  //icon tulis pesan
                  Icons.edit_note_outlined,
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
            ButtonChat(id: 1),
            SizedBox(
              height: 20,
            ),
            ChatBox(
              username: "mario05",
              message: "Hello, are you oke",
              time: "12:00",
            ),
            ChatBox(
              username: "john",
              message: "How are you today",
              time: "09:00",
            ),
            ChatBox(
              username: "doel_minna",
              message: "Thanks for the gift",
              time: "21:34",
            ),
            ChatBox(
              username: "adit_86",
              message: "Come on, let's play",
              time: "21:34",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(idx: 3),
    );
  }
}
