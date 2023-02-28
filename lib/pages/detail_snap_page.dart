import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailSnapPage extends StatelessWidget {
  const DetailSnapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/id/100/400/900'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 10,
              right: 10,
              bottom: 20,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 80,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(180, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(180, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(180, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50 / 2),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/id/200/400/900'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Origin_main",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "30s ago",
                              style: TextStyle(
                                color: Color.fromARGB(195, 255, 255, 255),
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 100),
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Icon(
                                Icons.close,
                                color: Color.fromARGB(195, 255, 255, 255),
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "BMTH - Throne",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // beri jarak sampai bawah
                Spacer(),
                TextFormField(
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "  Add a comment...",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.send,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
