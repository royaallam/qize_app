import 'package:flutter/material.dart';
import 'package:flutter_qize_app/ansButtoom.dart';
import 'package:flutter_qize_app/data/question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key,required this.onSelectAnswer,});
  final void Function (String answer)onSelectAnswer;
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  
  var currentQuestionIndex=0;
  
  void answerQuestion(String selectedAnswer){
   widget.onSelectAnswer(selectedAnswer);
    
    setState(() {
      currentQuestionIndex+=1;

    });
  }
  @override
  Widget build(BuildContext context) {
   final currentQuestion = question[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
             style: TextStyle(
              color: Colors.white),
              textAlign: TextAlign.center,
              ),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerBt(textBm: item, onTap: (){
                answerQuestion(item);
              },
              );
            }),
          ],
        ),
      ),
    );
  }
}
