import 'package:flutter/material.dart';
import 'package:instagram/dummyData.dart';

class personalchatpage extends StatelessWidget {
  final index;
  const personalchatpage({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("${dummydata[index].profileUrl}"),
                radius: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${dummydata[index].userName}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "${dummydata[index].userId}",
                    style: TextStyle(
                      color: const Color.fromARGB(131, 255, 255, 255),
                      fontSize: 12,
                    ),
                  )
                ],
              )
            ],
          ),
          actions: [
            Icon(
              Icons.call,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.videocam_rounded,
              size: 33,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 31, 31, 31),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30),
                  right: Radius.circular(30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
