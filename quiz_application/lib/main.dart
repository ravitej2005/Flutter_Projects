import 'package:flutter/material.dart';
import 'package:quiz_application/home.dart';
import 'package:quiz_application/question.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    dummyQuestions.forEach((Question) {
      Question.isSubmitted = false;
      Question.selectedOption = null;
    });

    return MaterialApp(
      home: home(),
    );
  }
}
