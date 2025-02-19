import 'package:flutter/material.dart';
import 'package:instagram/dummyData.dart';
import 'package:instagram/personalChatPage.dart';

class chatProfile extends StatelessWidget {
  final index;
  const chatProfile({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selectedTileColor: Colors.transparent,
      splashColor: Colors.transparent,
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => personalchatpage(
              index: index,
            ),
          ),
        )
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage("${dummydata[index].profileUrl}"),
        radius: 30,
      ),
      title: Text(
        "${dummydata[index].userName}",
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800),
      ),
      subtitle: Text(
        "4+ new messages . 3h",
        style: TextStyle(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.w800),
      ),
      trailing: Icon(
        Icons.camera_alt_outlined,
        color: const Color.fromARGB(123, 255, 255, 255),
        size: 30,
      ),
    );
  }
}
