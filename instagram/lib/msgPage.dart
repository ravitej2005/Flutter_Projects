import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram/chatProfile.dart';
import 'package:instagram/dummyData.dart';

class msgPage extends StatelessWidget {
  const msgPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "${dummydata[0].userId}",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    "Requests",
                    style: TextStyle(
                        color: Color.fromARGB(255, 112, 99, 216), fontSize: 15),
                  ),
                ],
              ),
              ListView.builder(
                // scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dummydata.length - 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return chatProfile(index: index);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
