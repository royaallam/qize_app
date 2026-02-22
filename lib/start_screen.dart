import 'package:flutter/material.dart';
import 'package:flutter_qize_app/quiz_scr.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 73, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/quiz-logo.png",
              width: 300,
              color: Color.fromRGBO(255, 255, 255, 0.584),
            ),
            SizedBox(height: 30),
            const Text(
              "Learn Flutter the fun !",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Color.fromRGBO(255, 255, 255, 0.5),
                fontSize: 24,
              ),
            ),
            SizedBox(height: 20),

            OutlinedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => QuestionScreen(),
                  ),
                );
              },
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
      ),
    );
  }
}
