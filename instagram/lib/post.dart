import 'package:flutter/material.dart';
import 'package:instagram/dummyData.dart';

class post extends StatefulWidget {
  final index;
  const post({super.key, this.index});

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  Icon likeIcon() {
    if (dummydata[widget.index].isLiked) {
      return const Icon(
        Icons.favorite_rounded,
        color: Colors.red,
      );
    } else {
      return const Icon(
        Icons.favorite_border_rounded,
        color: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      margin: const EdgeInsets.only(bottom: 10),
      // decoration: BoxDecoration(
      //     border: Border.all(width: 1, color: Colors.white)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            // decoration: BoxDecoration(border: Border.all(width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,

                      backgroundImage: NetworkImage(
                        "${dummydata[widget.index].profileUrl}",
                      ),
                      // child: Image.network(
                      //     "${dummydata[index].profileUrl}"
                      //     ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${dummydata[widget.index].userName}",
                            style: const TextStyle(
                                fontSize: 13, color: Colors.white),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.queue_music,
                                color: Colors.white,
                                size: 17,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${dummydata[widget.index].songName}",
                                style: const TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                )
              ],
            ),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                if (dummydata[widget.index].isLiked == false) {
                  dummydata[widget.index].likeCount += 1;
                  dummydata[widget.index].isLiked = true;
                }
              });
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              height: 400,
              child: Image.network(
                "${dummydata[widget.index].postImgUrl}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(children: [
                      Container(
                        height: 30,
                        width: 30,
                        margin: const EdgeInsets.only(right: 1),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              if (dummydata[widget.index].isLiked) {
                                dummydata[widget.index].likeCount -= 1;
                                dummydata[widget.index].isLiked = false;
                              } else {
                                dummydata[widget.index].likeCount += 1;
                                dummydata[widget.index].isLiked = true;
                              }
                            });
                          },
                          icon: likeIcon(),
                        ),
                      ),
                      Container(
                        child: Text(
                          "${dummydata[widget.index].likeCount}",
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                      )
                    ]),
                    Row(children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: const Icon(
                          Icons.mode_comment_outlined,
                          color: Colors.white,
                        ),
                        margin: const EdgeInsets.only(right: 1),
                      ),
                      Container(
                        child: Text(
                          "${dummydata[widget.index].commentCount}",
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                      )
                    ]),
                    Row(children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: const Icon(
                          Icons.near_me_rounded,
                          color: Colors.white,
                        ),
                        margin: const EdgeInsets.only(right: 1),
                      ),
                      Container(
                        child: Text(
                          "${dummydata[widget.index].shareCount}",
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                        ),
                        margin: const EdgeInsets.only(right: 10),
                      )
                    ])
                  ],
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: const Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.only(right: 10),
                )
              ],
            ),
          ),
          Container(
            child: Text(
              "${dummydata[widget.index].caption}",
              style: const TextStyle(fontSize: 13, color: Colors.white),
            ),
            margin: const EdgeInsets.only(left: 10, top: 10),
          ),
          Container(
            child: Text(
              "${dummydata[widget.index].date}",
              style: const TextStyle(fontSize: 11, color: Colors.white),
            ),
            margin: const EdgeInsets.only(left: 10, top: 10),
          ),
        ],
      ),
    );
  }
}
