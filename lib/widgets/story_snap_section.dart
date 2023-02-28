import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StorySnapSection extends StatelessWidget {
  StorySnapSection({
    required this.username,
  });

  final String username;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                Get.toNamed('/detail_snap');
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(55 / 2),
                      border: Border.all(
                        color: Color(0xff5666CC),
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45 / 2),
                      image: DecorationImage(
                          image: NetworkImage('https://picsum.photos/200/300'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text(
              this.username,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        SizedBox(width: 13),
      ],
    );
  }
}
