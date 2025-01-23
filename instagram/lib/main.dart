import 'package:flutter/material.dart';
import 'package:instagram/dummyData.dart';
import 'package:instagram/msgPage.dart';
import 'package:instagram/post.dart';
import 'package:instagram/stories.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.black,
                    title: Text(
                      "Instagram",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    actions: [
                      Container(
                        child: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {
                            // print("Hello");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => msgPage()));
                          },
                          icon: Icon(
                            Icons.near_me,
                            color: Colors.white,
                          ),
                        ),
                        margin: EdgeInsets.only(right: 10),
                      )
                    ],
                  ),
                  Container(
                      height: 126,
                      // color: Colors.blueAccent,
                      padding: EdgeInsets.all(10),
                      child: ListView.builder(
                          itemCount: dummydata.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return stories(index: index);
                          })),
                  Container(
                    // height: 500,
                    // color: Colors.amber,
                    child: ListView.builder(
                      itemCount: dummydata.length - 1,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return post(index: index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.home_filled,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.add_box_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.video_collection_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                    "https://th.bing.com/th/id/OIP.Oi5YjDy4agUTkb41nagZGwHaHa?w=512&h=512&rs=1&pid=ImgDetMain",
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
