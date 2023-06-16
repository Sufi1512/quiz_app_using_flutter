import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key, required this.isCorrecctAnswer, required this.questionIndex});
  final int questionIndex;
  final bool isCorrecctAnswer;
  @override
  Widget build(BuildContext context) {
    final questionnumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: 
      isCorrecctAnswer? Colors.lightBlue:
      Colors.deepPurpleAccent,
      borderRadius: BorderRadius.circular(100),

      ),
      child: Text(questionnumber.toString(),
      style: const TextStyle(fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 26, 3, 30)),),

    );
  }
}
