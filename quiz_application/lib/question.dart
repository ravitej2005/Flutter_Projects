class Question {
  String problem;
  List<String> options = [];
  int correctOptionIndex;
  bool isSubmitted = false;

  Question(
      {required this.problem,
      required this.correctOptionIndex,
      required this.options});
}

List<Question> dummyQuestions = [
  Question(
    problem: "What does the 'final' keyword do in Dart?",
    options: [
      "Declares a constant",
      "Creates a loop",
      "Defines a class",
      "Initializes a function"
    ],
    correctOptionIndex: 0,
  ),
  Question(
    problem: "Which data structure follows the LIFO principle?",
    options: ["Queue", "Array", "Stack", "Linked List"],
    correctOptionIndex: 2,
  ),
  Question(
    problem: "Which HTTP method is used to update a resource?",
    options: ["GET", "POST", "PUT", "DELETE"],
    correctOptionIndex: 2,
  ),
  Question(
    problem: "What is the time complexity of binary search?",
    options: ["O(n)", "O(log n)", "O(n log n)", "O(1)"],
    correctOptionIndex: 1,
  ),
  Question(
    problem: "Which widget is used for infinite scrolling in Flutter?",
    options: ["ListView", "GridView", "PageView", "SingleChildScrollView"],
    correctOptionIndex: 0,
  ),
  Question(
    problem: "Which database is NoSQL?",
    options: ["MySQL", "MongoDB", "PostgreSQL", "SQLite"],
    correctOptionIndex: 1,
  ),
  Question(
    problem: "What does 'async' keyword do in Dart?",
    options: [
      "Runs function synchronously",
      "Marks a function as asynchronous",
      "Pauses execution",
      "Creates a class"
    ],
    correctOptionIndex: 1,
  ),
  Question(
    problem: "Which sorting algorithm has the worst-case complexity of O(n²)?",
    options: ["Merge Sort", "Quick Sort", "Bubble Sort", "Heap Sort"],
    correctOptionIndex: 2,
  ),
  Question(
    problem: "What is the default port for HTTP?",
    options: ["80", "443", "21", "25"],
    correctOptionIndex: 0,
  ),
  Question(
    problem: "Which of the following is a strongly typed language?",
    options: ["JavaScript", "Python", "C", "Dart"],
    correctOptionIndex: 3,
  ),
];