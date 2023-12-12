import 'package:flutter/material.dart';
import 'package:quizapp/correctquestion.dart';
import 'package:quizapp/quiz_model.dart';
import 'package:quizapp/quiz_screen.dart';
import 'package:quizapp/wrongquestion_screen.dart';

class ResultScreen extends StatelessWidget {
  int corract;
  int worng;
final List<String> currectQuestion;
 final List<String> wrongQuestion;


  ResultScreen({
    Key? key,
    required this.currectQuestion,
    required this.wrongQuestion,
    required this.corract,
    required this.worng,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Question> questionList = getQuestions();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total = ${questionList.length}',
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CorrectQuestionscreen(currectQuestion: currectQuestion, ),));
                },
                child: Text(
                  'Right = $corract',
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WrongQuestionscreen(wrongQuestion: wrongQuestion, )));
                },
                child: Text(
                  'Wrong = $worng',
                  style: const TextStyle(fontSize: 40),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizScreen(),
                        ));
                  },
                  child: const Text('Restart'))
            ],
          ),
        ),
      ),
    );
  }
}
