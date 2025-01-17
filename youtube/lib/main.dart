import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
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
                        "YouTube",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      actions: [
                        Icon(
                          Icons.cast,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 22,
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      // color: Colors.amber,
                      child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              color: const Color.fromARGB(255, 52, 51, 51),
                              width: 50,
                              margin: EdgeInsets.only(right: 10),
                            );
                          }),
                    ),
                    Container(
                      // color: Colors.amber,
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 200,
                                  color: const Color.fromARGB(255, 54, 53, 53),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 5, left: 10, right: 10, bottom: 25),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 54, 53, 53),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              height: 40,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    "All VALORANT Agent Reveal Trailer | Part 1",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        "Valorant-Official",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "18 lakh views",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        "2 months ago",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 9),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Icon(
                                          Icons.more_vert,
                                          color: Colors.white,
                                        ),
                                      ]),
                                )
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.video_collection_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "Shorts",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                    size: 35,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.subscriptions_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "Subscriptions",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.account_circle_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "You",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ])),
    );
  }
}
