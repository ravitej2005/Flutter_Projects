import 'package:flutter/material.dart';

class question_screen extends StatefulWidget {
  final questionObj;
  final questionIndex;
  final updateSubmitState;
  const question_screen(
      {required this.questionObj,
      required this.questionIndex,
      required this.updateSubmitState,
      super.key});

  @override
  State<question_screen> createState() => _question_screenState();
}

// bool isSelected = false;
var selectedOption = null;

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
                    activeColor: Colors.red,
                    // materialTapTargetSize: MaterialTapTargetSize.padded,
                    tileColor: widget.questionObj.isSubmitted &&
                            index == widget.questionObj.correctOptionIndex
                        ? Colors.green[500]
                        : null,
                    dense: true,
                    value: "${widget.questionObj.options[index]}",
                    groupValue: selectedOption,
                    onChanged: (selectedOpt) {
                      setState(() {
                        selectedOption = selectedOpt;
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
