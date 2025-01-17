import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                          child: Icon(
                            Icons.send_sharp,
                            color: Colors.white,
                          ),
                          margin: EdgeInsets.only(right: 10),
                        )
                      ],
                    ),
                    Container(
                        height: 126,
                        padding: EdgeInsets.all(10),
                        child: ListView.builder(
                            itemCount: 20,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(right: 17),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(61),
                                        border: Border.all(
                                            color: Colors.green, width: 5),
                                      ),
                                      child: CircleAvatar(
                                        radius: 34,
                                        backgroundImage: NetworkImage(
                                          "https://i.pinimg.com/736x/c4/1c/6a/c41c6af58f15f3a42f977bbfe5f6c102.jpg",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Kira_Official",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    )
                                  ],
                                ),
                              );
                            })),
                    Container(
                      // height: 500,
                      child: ListView.builder(
                        itemCount: 30,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            margin: EdgeInsets.only(bottom: 10),
                            // decoration: BoxDecoration(
                            //     border: Border.all(width: 1, color: Colors.white)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  // decoration: BoxDecoration(border: Border.all(width: 1)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                                "https://i.pinimg.com/736x/c4/1c/6a/c41c6af58f15f3a42f977bbfe5f6c102.jpg"),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            height: 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Kira_Official",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Death Note",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Icon(
                                        Icons.more_vert_rounded,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  height: 400,
                                  child: Image.network(
                                    "https://th.bing.com/th/id/OIP.qy83H05Z6iuPSVy6IiN3UAAAAA?rs=1&pid=ImgDetMain",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Row(children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              child: Icon(
                                                Icons.favorite_border_rounded,
                                                color: Colors.white,
                                              ),
                                              margin: EdgeInsets.only(right: 1),
                                            ),
                                            Container(
                                              child: Text(
                                                "7,466",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              ),
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                            )
                                          ]),
                                          Row(children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              child: Icon(
                                                Icons.mode_comment_outlined,
                                                color: Colors.white,
                                              ),
                                              margin: EdgeInsets.only(right: 1),
                                            ),
                                            Container(
                                              child: Text(
                                                "9",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              ),
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                            )
                                          ]),
                                          Row(children: [
                                            Container(
                                              height: 30,
                                              width: 30,
                                              child: Icon(
                                                Icons.send,
                                                color: Colors.white,
                                              ),
                                              margin: EdgeInsets.only(right: 1),
                                            ),
                                            Container(
                                              child: Text(
                                                "183",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              ),
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                            )
                                          ])
                                        ],
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        child: Icon(
                                          Icons.bookmark_border_outlined,
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.only(right: 10),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Psychological thriller, genius rivalry, supernatural notebook, intense strategies, justice...",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                ),
                                Container(
                                  child: Text(
                                    "7 January",
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 10, top: 10),
                                ),
                              ],
                            ),
                          );
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
          ])),
    );
  }
}
