import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/bottom_sheet_posts.dart';

//controller
import '../controller/homepage_controller.dart';

class PostsCardSection extends StatelessWidget {
  PostsCardSection({
    required this.profile,
    required this.username,
    required this.image,
  });

  final controller = Get.put(HomePageController());

  final String profile;
  final String username;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          shadowColor: Color.fromARGB(50, 245, 245, 245),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            width: double.infinity,
            height: 550,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(40 / 2),
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://picsum.photos/id/${this.profile}/200/300",
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        this.username,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Get.bottomSheet(
                            BottomSheetPosts(),
                          );
                        },
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.grey[900],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://picsum.photos/id/${this.image}/300/400",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      "Travel more, worry less 🌍 #wanderlust #exploretheworld"),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.mode_comment,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "20 comments",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Obx(
                        () {
                          return Row(
                            children: [
                              Text(
                                controller.like.value,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 5),
                              InkWell(
                                onTap: () {
                                  controller.liked();
                                },
                                child: Icon(
                                  Icons.favorite,
                                  color: controller.color.value,
                                  size: 35,
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
