import 'package:flutter/material.dart';
import 'package:quiz_application/main.dart';
import 'package:quiz_application/question.dart';
import 'package:remixicon/remixicon.dart';

class score extends StatelessWidget {
  final correctAnsCount;
  const score({this.correctAnsCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Quiz Over !!",
              style: TextStyle(
                fontFamily: 'Batangas',
                fontWeight: FontWeight.w700,
                fontSize: 30,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: const Alignment(0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  width: 90,
                  height: 60,
                  child: const Text(
                    "Score :",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0, 0),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                    ),
                  ),
                  width: 90,
                  height: 60,
                  child: Text(
                    "$correctAnsCount",
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: const Alignment(0, 0),
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                    ),
                  ),
                  width: 90,
                  height: 60,
                  child: const Text(
                    "Out of :",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(0, 0),
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                    ),
                  ),
                  width: 90,
                  height: 60,
                  child: Text(
                    "${dummyQuestions.length}",
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MainApp();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: const Size(200, 50),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Start Again",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    size: 18,
                    Remix.arrow_right_line,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
