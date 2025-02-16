import 'package:flutter/material.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
