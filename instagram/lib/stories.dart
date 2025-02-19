import 'package:flutter/material.dart';
import 'package:instagram/dummyData.dart';

class stories extends StatelessWidget {
  final int index;
  const stories({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 17),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xFFfeda75), // Yellow
                  Color(0xFFfa7e1e), // Orange
                  Color(0xFFd62976), // Pink
                  Color(0xFF962fbf), // Purple
                  Color(0xFF4f5bd5), // Blueish
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black, // Background color inside the ring
              ),
              padding:
                  const EdgeInsets.all(4), // Space between profile pic and border
              child: ClipOval(
                child: Image.network(
                  "${dummydata[index].profileUrl}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${dummydata[index].userName}",
            style: const TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }
}
