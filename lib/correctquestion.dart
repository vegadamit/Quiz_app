import 'package:flutter/material.dart';

class CorrectQuestionscreen extends StatelessWidget {
  final List<String> currectQuestion;

  CorrectQuestionscreen({Key? key, required this.currectQuestion, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Correct Question'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: currectQuestion.length,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(currectQuestion[index]),
            ],
          ),
        );
          },
        ),
      ),
    );
  }
}
