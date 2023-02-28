import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallsBox extends StatelessWidget {
  CallsBox({
    required this.username,
    required this.status,
    required this.time,
  });

  late String username;
  late String status;
  late String time;
  late Color color;

  Future textInit() async {
    if (this.status == "mis") {
      this.color = Colors.red;
      this.status = "Missed call";
    } else if (this.status == "out") {
      this.color = Colors.amber;
      this.status = "Outgoing call";
    } else {
      this.color = Colors.green;
      this.status = "Incoming call";
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: textInit(),
        builder: (context, snapshot) {
          return Column(
            children: [
              Card(
                elevation: 5,
                shadowColor: Color.fromARGB(70, 158, 158, 158),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(40 / 2),
                            image: DecorationImage(
                              image: NetworkImage('https://picsum.photos/200'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              this.username,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  this.status,
                                  style: TextStyle(
                                      fontSize: 12, color: this.color),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  this.time,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.call,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.videocam_rounded,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          );
        });
  }
}
