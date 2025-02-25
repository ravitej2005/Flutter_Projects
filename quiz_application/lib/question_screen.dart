import 'package:flutter/material.dart';
import 'package:quiz_application/question.dart';
import 'package:remixicon/remixicon.dart';

class question_screen extends StatefulWidget {
  final questionObj;
  final questionIndex;
  final incrementIndex;
  final decrementIndex;
  final setAllAttempted;
  const question_screen(
      {this.questionObj,
      this.questionIndex,
      this.incrementIndex,
      this.decrementIndex,
      this.setAllAttempted,
      super.key});

  @override
  State<question_screen> createState() => _question_screenState();
}

class _question_screenState extends State<question_screen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromARGB(255, 255, 251, 251),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 3),
              blurRadius: 8,
              spreadRadius: -3,
            )
          ],
        ),
        // height: 500,
        margin: const EdgeInsets.all(20).copyWith(bottom: 120),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Que.${widget.questionIndex + 1}",
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    "${widget.questionObj.problem}",
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
                itemCount: widget.questionObj.options.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RadioListTile(
                    selected: false,
                    dense: true,
                    value: index,
                    groupValue: widget.questionObj.selectedOption,
                    onChanged: (selectedOpt) {
                      setState(() {
                        widget.questionObj.selectedOption = selectedOpt;
                        if (widget.questionIndex == dummyQuestions.length - 1) {
                          widget.setAllAttempted();
                        }
                      });
                    },
                    title: Text(
                      "${widget.questionObj.options[index]}",
                      style: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.questionIndex != 0
                    ? TextButton(
                        onPressed: () {
                          widget.decrementIndex();
                        },
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Remix.arrow_left_line,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Previous",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: 48,
                      ),
                widget.questionIndex != (dummyQuestions.length - 1) &&
                        widget.questionObj.selectedOption != null
                    ? TextButton(
                        onPressed: () {
                          widget.incrementIndex();
                        },
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Remix.arrow_right_line,
                              size: 20,
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: 48,
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
