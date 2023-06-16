import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Image.asset(
              'asset/images/quiz-logo.png',
              width: 300,
              color: Color.fromARGB(155, 255, 255, 250),
            ),
            // child: Opacity(
            //   opacity: 0.7,
            //   child: Image.asset(
            //     'asset/images/quiz-logo.png',
            //     width: 300,
            //   ),
            // ),
          ),
          // SizedBox(
          //   height: 20,
          // ),,

          Text(
            "Learn Flutter in fun way!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 74, 4, 44),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
              icon: Icon(Icons.arrow_right_alt),
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  shadowColor: Colors.deepOrange),
              label: Text("Let'S Start"))
        ],
      ),
    );
  }
}
