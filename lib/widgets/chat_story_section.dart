import 'package:flutter/material.dart';

class ChatStorySection extends StatelessWidget {
  ChatStorySection({
    required this.username,
  });

  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(55 / 2),
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/200/300'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15 / 2),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          username,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
