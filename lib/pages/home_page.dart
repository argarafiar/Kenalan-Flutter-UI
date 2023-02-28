import 'package:flutter/material.dart';
import 'package:get/get.dart';

//widgets
import '../widgets/story_snap_section.dart';
import '../widgets/posts_card_section.dart';
import '../widgets/posts_card_quotes_section.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/drawer_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: ListView(
          //hapus scroll physics untuk menghilangkan scroll
          physics: BouncingScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  );
                }),
                Text(
                  "Kenalan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.toNamed('/notification');
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(55 / 2),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(45 / 2),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Icon(Icons.add, size: 15),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        "You",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 13),
                  StorySnapSection(username: "argarafiar"),
                  StorySnapSection(username: "mario05"),
                  StorySnapSection(username: "lea.98"),
                  StorySnapSection(username: "loco_cafe"),
                  StorySnapSection(username: "sdadev"),
                  StorySnapSection(username: "dinata"),
                ],
              ),
            ),
            SizedBox(height: 20),
            PostsCardSection(profile: "201", image: "201", username: "sdadev"),
            PostsCardQuotesSection(profile: "204", username: "dinata"),
            PostsCardSection(profile: "202", image: "202", username: "mario05"),
            PostsCardSection(
                profile: "203", image: "203", username: "argarafiar"),
            PostsCardQuotesSection(profile: "206", username: "lea.98"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(idx: 0),
      drawer: DrawerHomePage(),
    );
  }
}
