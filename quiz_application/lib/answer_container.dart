import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class answer_container extends StatelessWidget {
  final questionObj;
  final questionIndex;
  const answer_container({this.questionIndex, this.questionObj, super.key});

  Color? giveTileColor(int index) {
    if (index == questionObj.correctOptionIndex) {
      return Colors.green[50];
    } else if (index == questionObj.selectedOption &&
        questionObj.selectedOption != questionObj.correctOptionIndex) {
      return Colors.red[100];
    }
    return Colors.transparent;
  }

  Icon? giveSecondaryIcon(int index) {
    if (index == questionObj.correctOptionIndex) {
      return const Icon(
        Remix.check_line,
        color: Colors.green,
        size: 23,
      );
    } else if (index == questionObj.selectedOption &&
        questionObj.selectedOption != questionObj.correctOptionIndex) {
      return const Icon(
        Remix.close_fill,
        color: Colors.red,
        size: 23,
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      margin: const EdgeInsets.all(20).copyWith(top: 0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Que.${questionIndex + 1}",
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
                  "${questionObj.problem}",
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
              physics: NeverScrollableScrollPhysics(),
              itemCount: questionObj.options.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  color: giveTileColor(index),
                  child: RadioListTile(
                    secondary: giveSecondaryIcon(index),
                    selected: false,
                    dense: true,
                    value: index,
                    groupValue: questionObj.selectedOption,
                    onChanged: (selectedOpt) {},
                    title: Text(
                      "${questionObj.options[index]}",
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
        ],
      ),
    );
  }
}
