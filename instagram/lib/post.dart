import 'package:flutter/material.dart';
import 'package:instagram/dummyData.dart';

class post extends StatelessWidget {
  final index;
  const post({super.key, this.index});

  @override
  Widget build(BuildContext context) {
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
                                            "${dummydata[index + 1].profileUrl}",
                                          ),
                                          // child: Image.network(
                                          //     "${dummydata[index + 1].profileUrl}"
                                          //     ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 40,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${dummydata[index + 1].userName}",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.queue_music,
                                                    color: Colors.white,
                                                    size: 17,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "${dummydata[index + 1].songName}",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              )
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
                                  "${dummydata[index + 1].postImgUrl}",
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
                                              "${dummydata[index + 1].likeCount}",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                            margin: EdgeInsets.only(right: 10),
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
                                              "${dummydata[index + 1].commentCount}",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                            margin: EdgeInsets.only(right: 10),
                                          )
                                        ]),
                                        Row(children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            child: Icon(
                                              Icons.near_me_rounded,
                                              color: Colors.white,
                                            ),
                                            margin: EdgeInsets.only(right: 1),
                                          ),
                                          Container(
                                            child: Text(
                                              "${dummydata[index + 1].shareCount}",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                            margin: EdgeInsets.only(right: 10),
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
                                  "${dummydata[index + 1].caption}",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                                margin: EdgeInsets.only(left: 10, top: 10),
                              ),
                              Container(
                                child: Text(
                                  "${dummydata[index + 1].date}",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.white),
                                ),
                                margin: EdgeInsets.only(left: 10, top: 10),
                              ),
                            ],
                          ),
                        );
  }
}