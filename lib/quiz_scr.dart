import 'package:flutter/material.dart';
import 'package:flutter_qize_app/ansButtoom.dart';
import 'package:flutter_qize_app/data/question.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion=question[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text,style: TextStyle(color: Colors.white),),
          SizedBox(height: 30,),
          
          
          AnswerBt(textBm: currentQuestion.answers[0], onTap: (){}),
          AnswerBt(textBm: currentQuestion.answers[1], onTap: (){}),
          AnswerBt(textBm: currentQuestion.answers[2], onTap: (){}),
          AnswerBt(textBm: currentQuestion.answers[3], onTap: (){}),
        ],
      ),
    );
  }
}