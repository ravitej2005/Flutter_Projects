import 'package:flutter/material.dart';
import 'package:todo/ClockWidget.dart';
import 'package:todo/toDo.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F4F3),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: const Color(0xFF50C2C9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 45,
                  child: Image.asset('assets/images/img3.png'),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  "Welcome Jeegar Gyani",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ClockWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Task List",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(child: ToDo())
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
