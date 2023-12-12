import 'package:flutter/material.dart';
import 'package:quizapp/quiz_model.dart';
import 'package:quizapp/result_screen.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int correct = 0;
  int wrong = 0;
  Answer? selectedAnswer;
  List<String> correctquestion=[];
  List<String> wrongquestion=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    change();
  }

  void change() {
    for(var question in questionList) {
      question.answersList.shuffle();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questionList[currentQuestionIndex].questionText,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          answer(),
          nextButton(),
        ]),
      ),
    );
  }
  answer() {
    return Container(
      height: 400,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: questionList[currentQuestionIndex].answersList.length,
        itemBuilder: (BuildContext context, int index) {
          Answer answer = questionList[currentQuestionIndex].answersList[index];
          return answerButton(answer);
        },
      ),
    );
  }

  answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        height: 5,
        width: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: isSelected ? Colors.amberAccent : Colors.white,
              shape:BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),
          onPressed: () {
            setState(() {
              selectedAnswer = answer;
            });
          },
          child: Text(answer.answerText,
              style: const TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  nextButton() {
    Answer? answer = selectedAnswer;
    bool islastQueston = currentQuestionIndex == questionList.length -1;
    return Container(
      width: 200,
      height: 48,
      child: ElevatedButton(
        child: const Text("Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        onPressed: () {
          setState(() {
            if (selectedAnswer != null) {
              if (answer!.isCorrect) {
                correctquestion.add(questionList[currentQuestionIndex].questionText);
                correctquestion.add('Ans: ${questionList[currentQuestionIndex].answersList.firstWhere((a) => a.isCorrect).answerText}');
                correct++;
              } else {
                wrongquestion.add(questionList[currentQuestionIndex].questionText);
                wrongquestion.add('Ans: ${questionList[currentQuestionIndex].answersList.firstWhere((a) => a.isCorrect).answerText}');
                wrong++;
              }
              if (!islastQueston) {
                currentQuestionIndex++;
                selectedAnswer = null;
              } else {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      currectQuestion: correctquestion,
                      wrongQuestion: wrongquestion,
                      corract: correct,
                      worng: wrong,
                    ),
                  ),
                );
              }
            }
          });
          }
      ),
    );
  }
}
