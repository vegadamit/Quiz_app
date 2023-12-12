import 'package:flutter/material.dart';
class WrongQuestionscreen extends StatelessWidget {
  final List<String> wrongQuestion;

   WrongQuestionscreen({Key? key, required this.wrongQuestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrong Question'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: wrongQuestion.length,
          itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(wrongQuestion[index]),
              ],
            ),
          );
        },),
      ),
    );
  }
}
