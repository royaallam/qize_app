import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "images/quiz-logo.png",
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 10),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              color: Color.fromARGB(150, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10),

          OutlinedButton.icon(
            onPressed: startQuiz,
            style: ButtonStyle(),
            icon: Icon(Icons.arrow_right_alt),
            label: Text(
              "Start Qize",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
