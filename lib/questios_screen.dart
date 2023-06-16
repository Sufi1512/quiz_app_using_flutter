import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/quiz_question/quiz_questions.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.onSelectanswer, super.key});
  final void Function(String answer) onSelectanswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuesIndex = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectanswer(selectedAnswer);
    setState(() {
      currentQuesIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentQuesIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffled().map((answer) {
              return AnswerButton(
                  answertext: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            })
            // AnswerButton(answertext: currentQuestion.answers[0], onTap: () {}),
            // AnswerButton(
            //   answertext: currentQuestion.answers[1],
            //   onTap: () {},
            // ),
            // AnswerButton(answertext: currentQuestion.answers[2], onTap: () {}),
            // AnswerButton(answertext: currentQuestion.answers[3], onTap: () {}),
          ],
        ),
      ),
    );
  }
}
