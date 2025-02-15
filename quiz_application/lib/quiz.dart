import 'package:flutter/material.dart';
import 'package:quiz_application/question.dart';
import 'package:quiz_application/question_screen.dart';
import 'package:quiz_application/score.dart';
import 'package:remixicon/remixicon.dart';

// ignore: must_be_immutable, camel_case_types
class quiz extends StatefulWidget {
  TextEditingController nameController;
  bool quizCompleted = false;
  int index = 0;
  quiz({required this.nameController, super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  void updateSubmitState(Question obj) {
    setState(() {
      obj.isSubmitted = true;
      if (widget.index == dummyQuestions.length - 1) {
        widget.quizCompleted = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: dummyQuestions[widget.index].isSubmitted
          ? Container(
              padding: const EdgeInsets.only(bottom: 100),
              child: FloatingActionButton.extended(
                elevation: 0,
                highlightElevation: 0,
                backgroundColor: Colors.white,
                onPressed: () {
                  if (widget.index < dummyQuestions.length - 1) {
                    setState(() {
                      widget.index++;
                    });
                  } else if (widget.index == dummyQuestions.length - 1) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return score();
                    }));
                  }
                },
                label: Padding(
                  padding: const EdgeInsets.all(8.0).copyWith(left: 15),
                  child: Row(
                    children: [
                      Text(
                        widget.quizCompleted ? "Submit Test" : "Next",
                        style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Remix.arrow_right_line,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            )
          : null,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: widget.nameController.text.trim() == ''
            ? const Text("Welcome ,")
            : Text("Hello ${widget.nameController.text.trim()} ,"),
        titleTextStyle: const TextStyle(
          fontFamily: 'Batangas',
          fontWeight: FontWeight.w600,
          fontSize: 25,
          color: Colors.black,
        ),
      ),
      body: question_screen(
        questionObj: dummyQuestions[widget.index],
        questionIndex: widget.index,
        updateSubmitState: updateSubmitState,
      ),
    );
  }
}
