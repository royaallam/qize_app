import 'package:flutter/material.dart';
import 'package:flutter_qize_app/data/question.dart';
import 'package:flutter_qize_app/quiz_scr.dart';
import 'package:flutter_qize_app/result.dart';
import 'package:flutter_qize_app/screen_one.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
 List<String> _selectedAnswers = [];
  var activeScreen = 'start-screen';

  void swithchScreen() {
    setState(() {
      activeScreen = 'question-screen';
      
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if(_selectedAnswers.length == question.length){
      setState(() {
        _selectedAnswers=[];
       //activeScreen == 'start-screen';
       activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build( context) {
    Widget screenWidget = StartScreen(swithchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }
    if(activeScreen =='result-screen'){
      screenWidget=ResultQiue(chooseAnswer: _selectedAnswers,);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Container(
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
          child: activeScreen == 'start-screen'
              ? StartScreen(swithchScreen)
              : QuestionScreen(onSelectAnswer: chooseAnswer),
        ),
      ),
    );
  }
}
