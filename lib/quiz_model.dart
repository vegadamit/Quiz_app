class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;
  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  list.add(Question(
    "Q1.Flutter is developed by ......",
    [
      Answer("FaceBook", false),
      Answer("Samsung", false),
      Answer("Google", true),
      Answer("Apple", false),
    ],
  ));

  list.add(Question(
    "Q2.How many types of widgets are there in Flutter?",
    [
      Answer("2", true),
      Answer("5", false),
      Answer("6", false),
      Answer("3", false),
    ],
  ));
  list.add(Question(
    "Q3.Which of the following widget is used for repeating content in Flutter?",
    [
      Answer("ExpandedView", false),
      Answer("ArrayView", false),
      Answer("None of the above", false),
      Answer("ListView ", true),
    ],
  ));

  list.add(Question(
    "Q4.Which programming language is used to build Flutter applications?",
    [
      Answer(" Kotlin", false),
      Answer("Java", false),
      Answer("Dart", true),
      Answer("JavaScript", false),
    ],
  ));

  list.add(Question(
    "Q5.What are the features of Flutter?",
    [
      Answer(" Fast development", false),
      Answer("Huge widget catalog", false),
      Answer("High performance application", false),
      Answer("All of the above", true),
    ],
  ));

  list.add(Question(
    "Q6.Unlike other programming languages Dart doesn’t support ...............",
    [
      Answer("classes", false),
      Answer("interfaces", false),
      Answer("arrays", true),
      Answer("object-oriented", false),
    ],
  ));

  list.add(Question(
    "Q7.Which of the following option is used to represent a collection of objects in Dart?",
    [
      Answer(" String", false),
      Answer("Numbers", false),
      Answer("Booleans", false),
      Answer("Lists and Maps", true),
    ],
  ));

  list.add(Question(
    "Q8.Which of the following is used to load image from flutter project’s assets?",
    [
      Answer(" Image", false),
      Answer("Image.asset", true),
      Answer("Image.file", false),
      Answer("All of the above", false),
    ],
  ));
  list.add(Question(
    "Q9.What does SDK stands for?",
    [
      Answer("Software Data Kit", false),
      Answer("Software Database Ki`t", false),
      Answer("Software Development Kit", true),
      Answer("Software Kit", false),
    ],
  ));
  list.add(Question(
    "Q10.Choose the best editors for Flutter app development?",
    [
      Answer("VS Code", false),
      Answer("Dart pad", false),
      Answer("Android Studio", false),
      Answer("All of the above", true),
    ],
  ));
  return list;
}
