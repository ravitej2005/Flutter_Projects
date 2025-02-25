import 'package:flutter/material.dart';
import 'package:quiz_application/answer_container.dart';
import 'package:quiz_application/home.dart';
import 'package:quiz_application/question.dart';

class score extends StatelessWidget {
  const score({super.key});

  @override
  Widget build(BuildContext context) {
    int setMarks() {
      int marks = 0;
      dummyQuestions.forEach((question) {
        if (question.selectedOption == question.correctOptionIndex) {
          marks++;
        }
      });
      return marks;
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
          ),
          const Text(
            "Quiz Over !!",
            style: TextStyle(
              fontFamily: 'Batangas',
              fontWeight: FontWeight.w700,
              fontSize: 30,
              letterSpacing: 1,
            ),
          ),
          Text(
            "Score : ${setMarks()}/${dummyQuestions.length}",
            style: const TextStyle(
              fontFamily: 'Batangas',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return home();
                },
              ));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              "Restart Quiz",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dummyQuestions.length,
              itemBuilder: (context, index) {
                return answer_container(
                  questionIndex: index,
                  questionObj: dummyQuestions[index],
                );
              })
        ],
      ),
    ));
  }
}
