import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/bottom_nav.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Text(
                "Explore",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 20),
            child: TextFormField(
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
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FilterSearch(color: Color(0xff5666CC), text: "Top"),
              FilterSearch(color: Colors.grey, text: "Users"),
              FilterSearch(color: Colors.grey, text: "hastags"),
              FilterSearch(color: Colors.grey, text: "Posts"),
              FilterSearch(color: Colors.grey, text: "Events"),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PictureKecil(),
                    SizedBox(width: 10),
                    PictureBesar(),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border:
                        Border.all(color: Color.fromARGB(70, 158, 158, 158)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(25 / 2),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://picsum.photos/id/201/200/300'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "daily.quotes333",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Text(
                          "\"When life gives you lemons, don't make lemonade. Make a lemon cake - it will make you happier\"",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PictureBesar(),
                    SizedBox(width: 10),
                    PictureKecil(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(idx: 1),
    );
  }
}

class PictureBesar extends StatelessWidget {
  const PictureBesar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //ukuran lebar responsive
      width: MediaQuery.of(context).size.width - 170,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/id/203/200/300'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class PictureKecil extends StatelessWidget {
  const PictureKecil({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage('https://picsum.photos/id/202/200/300'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class FilterSearch extends StatelessWidget {
  FilterSearch({
    required this.text,
    required this.color,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.text,
          style: TextStyle(
            color: this.color,
          ),
        ),
        SizedBox(height: 7),
        //beri garis bawah
        Container(
          width: 72,
          height: 1,
          color: this.color,
        ),
      ],
    );
  }
}
