import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListNotification extends StatelessWidget {
  ListNotification({
    required this.icons,
    required this.name,
    required this.text,
  });

  final IconData icons;
  final String name;
  final String text;
  late Color color;

  Future liked() async {
    if (this.icons == Icons.favorite) {
      this.color = Colors.pink;
    } else {
      this.color = Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: liked(),
      builder: (context, snapshoot) {
        return Column(
          children: [
            Card(
              elevation: 5,
              shadowColor: Color.fromARGB(75, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        this.icons,
                        size: 25,
                        color: this.color,
                      ),
                      SizedBox(width: 10),
                      Text(
                        this.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        this.text,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image:
                                NetworkImage('https://picsum.photos/200/300'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
          ],
        );
      },
    );
  }
}
