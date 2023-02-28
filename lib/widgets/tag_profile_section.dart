import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TagProfile extends StatelessWidget {
  TagProfile({
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: text.length + 80,
      height: 30,
      decoration: BoxDecoration(
        color: Color.fromARGB(20, 133, 133, 133),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
