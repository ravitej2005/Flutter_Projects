import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class question_screen extends StatefulWidget {
  final questionObj;
  final questionIndex;
  final updateSubmitState;
  final updateCorrectCount;
  question_screen(
      {required this.questionObj,
      required this.questionIndex,
      required this.updateSubmitState,
      required this.updateCorrectCount,
      super.key});

  @override
  State<question_screen> createState() => _question_screenState();
}

// bool isSelected = false;
var correctAnsCount = 0;

class _question_screenState extends State<question_screen> {
  Color? giveTitleColor(int index) {
    if (widget.questionObj.isSubmitted == true) {
      if (widget.questionObj.selectedOption ==
          widget.questionObj.correctOptionIndex) {
        if (index == widget.questionObj.selectedOption) {
          return Colors.green[50];
        } else {
          return null;
        }
      } else {
        if (index == widget.questionObj.selectedOption) {
          return Colors.red[100];
        } else {
          if (index == widget.questionObj.correctOptionIndex) {
            return Colors.green[50];
          } else {
            return null;
          }
        }
      }
    }
    return null;
  }

  Icon? giveSecondaryIcon(int index) {
    if (widget.questionObj.isSubmitted == true) {
      if (widget.questionObj.selectedOption ==
          widget.questionObj.correctOptionIndex) {
        if (index == widget.questionObj.selectedOption) {
          return const Icon(
            Remix.check_line,
            color: Colors.green,
            size: 23,
          );
        } else {
          return null;
        }
      } else {
        if (index == widget.questionObj.selectedOption) {
          return const Icon(
            Remix.close_fill,
            color: Colors.red,
            size: 23,
          );
        } else {
          if (index == widget.questionObj.correctOptionIndex) {
            return const Icon(
              Remix.check_line,
              color: Colors.green,
              size: 23,
            );
          } else {
            return null;
          }
        }
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    if ((widget.questionObj.selectedOption ==
        widget.questionObj.correctOptionIndex) && widget.questionObj.isSubmitted) {
      correctAnsCount++;
      widget.updateCorrectCount(correctAnsCount);
    }

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
                  print(
                      "in listview builder $widget.questionObj.selectedOption");
                  print("correct opt ${widget.questionObj.correctOptionIndex}");
                  print("submit status ${widget.questionObj.isSubmitted}");
                  print(
                      "calculation ${(widget.questionObj.isSubmitted == true) && (widget.questionObj.selectedOption == widget.questionObj.correctOptionIndex)}");
                  return Container(
                    decoration: BoxDecoration(
                      color: giveTitleColor(index),
                    ),
                    child: RadioListTile(
                      selected: false,
                      secondary: giveSecondaryIcon(index),
                      // tileColor: Colors.white,
                      // materialTapTargetSize: MaterialTapTargetSize.padded,
                      dense: true,
                      value: index,
                      groupValue: widget.questionObj.selectedOption,
                      onChanged: (selectedOpt) {
                        widget.questionObj.isSubmitted
                            ? null
                            : setState(() {
                                widget.questionObj.selectedOption = selectedOpt;
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
                    ),
                  );
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    widget.updateSubmitState(widget.questionObj);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: const Size(100, 50),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
