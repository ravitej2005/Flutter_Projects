import 'package:flutter/material.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black, // Background color
      selectedItemColor: Colors.white, // Selected item color
      unselectedItemColor: Colors.grey, // Unselected item color
      selectedFontSize: 12, // Font size for the selected item
      unselectedFontSize: 12,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home_filled,
            color: Colors.white,
            size: 30,
          ),
          
        ),
        BottomNavigationBarItem(
          label: "Search",
          icon: Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: "Upload",
          icon: Icon(
            Icons.add_box_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: "Reels",
          icon: Icon(
            Icons.video_collection_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
