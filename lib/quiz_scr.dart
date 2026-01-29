import 'package:flutter/material.dart';
import 'package:flutter_qize_app/ansButtoom.dart';
import 'package:flutter_qize_app/data/question.dart';
import 'package:flutter_qize_app/result.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}
class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  List<String> chosenAnswers = []; // هنا نخزن الإجابات

  void answerQuestion(String selectedAnswer) {
    chosenAnswers.add(selectedAnswer); // نخزن الإجابة

    setState(() {
      if (currentQuestionIndex < question.length - 1) {
        currentQuestionIndex++;
      } else {
        // إذا خلصت كل الأسئلة
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultQuiz(
              chosenAnswers: chosenAnswers,
              onRestart: () {
                Navigator.pop(context); // العودة للكويز
              },
            ),
          ),
        );
      }
    });
  }
 


  @override
  Widget build(BuildContext context) {
    final currentQuestion = question[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerBt(
                textBm: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

