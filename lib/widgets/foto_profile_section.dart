import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FotoProfileSection extends StatelessWidget {
  const FotoProfileSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          height: 210,
          color: Colors.transparent,
        ),
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/200'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 85,
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(120 / 2),
              border: Border.all(
                color: Colors.white,
                width: 5,
              ),
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/200'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
