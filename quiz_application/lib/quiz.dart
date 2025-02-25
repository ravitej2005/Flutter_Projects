import 'package:flutter/material.dart';
import 'package:quiz_application/question.dart';
import 'package:quiz_application/question_screen.dart';
import 'package:quiz_application/score.dart';
// import 'package:quiz_application/score.dart';
// import 'package:remixicon/remixicon.dart';

// ignore: must_be_immutable, camel_case_types
class quiz extends StatefulWidget {
  TextEditingController nameController;
  int index = 0;
  bool allAttempted = false;
  quiz({required this.nameController, super.key});

  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {
  void incrementIndex() {
    setState(() {
      widget.index++;
    });
  }

  void decrementIndex() {
    setState(() {
      widget.index--;
    });
  }

  void setAllAttempted() {
    setState(() {
      widget.allAttempted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: widget.allAttempted
          ? Container(
              margin: EdgeInsets.only(bottom: 130),
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return score();
                    },
                  ));
                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white, // Optional icon
                label: const Text(
                  "Submit Test",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            )
          : null,
      backgroundColor: Colors.white,
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
        questionIndex: widget.index,
        questionObj: dummyQuestions[widget.index],
        incrementIndex: incrementIndex,
        decrementIndex: decrementIndex,
        setAllAttempted: setAllAttempted,
      ),
    );
  }
}
