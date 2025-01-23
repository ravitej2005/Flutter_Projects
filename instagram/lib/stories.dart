import 'package:flutter/material.dart';
import 'package:instagram/dummyData.dart';

class stories extends StatelessWidget {
  final index;
  const stories({super.key , this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(61),
              border: Border.all(color: Colors.green, width: 5),
            ),
            child: CircleAvatar(
              radius: 34,
              backgroundImage: NetworkImage(
                "${dummydata[index].profileUrl}",
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${dummydata[index].userName}",
            style: TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }
}
