import 'package:flutter/material.dart';
import 'package:instagram/bottomNavigationBar.dart';
import 'package:instagram/dummyData.dart';
import 'package:instagram/msgPage.dart';
import 'package:instagram/post.dart';
import 'package:instagram/stories.dart';

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // primary: true,
      bottomNavigationBar: const bottomNavigationBar(),
      backgroundColor: Colors.black,
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.black,
                title: const Text(
                  "Instagram",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => msgPage(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => msgPage(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.near_me,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
              Container(
                height: 126,
                // color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: dummydata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return stories(index: index);
                  },
                ),
              ),
              ListView.builder(
                itemCount: dummydata.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return post(index: index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
