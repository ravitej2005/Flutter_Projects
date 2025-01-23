import 'package:flutter/material.dart';
import 'package:instagram/dummyData.dart';
import 'package:instagram/personalChatPage.dart';

class chatProfile extends StatelessWidget {
  final index;
  const chatProfile({super.key,this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => personalchatpage(
                      index: index + 1,
                    )))
      },
      child: Container(
        margin: EdgeInsets.only(top: 23),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  backgroundImage:
                      NetworkImage("${dummydata[index + 1].profileUrl}"),
                  radius: 30,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${dummydata[index + 1].userName}",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "4+ new messages . 3h",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ],
          ),
          Icon(
            Icons.camera_alt_outlined,
            color: const Color.fromARGB(123, 255, 255, 255),
            size: 30,
          )
        ]),
      ),
    );
  }
}
