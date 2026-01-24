import 'package:flutter/material.dart';
import 'package:flutter_qize_app/quiz_scr.dart';
import 'package:flutter_qize_app/screen_one.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
Widget?  activeScreen ;
@override
  void initState() {
    activeScreen=StartScreen(swithchScreen);
    super.initState();

  }

  void swithchScreen(){
    setState(() {
      activeScreen=const QuestionScreen();
    });
  }
  
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Container(
          decoration:const  BoxDecoration(
            gradient: LinearGradient(colors:[Color.fromARGB(255, 73, 13, 151),
            Color.fromARGB(255, 107, 15, 168)],
            begin: Alignment.topLeft,
            end:Alignment.bottomRight
            
            )
          ),
          child: activeScreen,
        ),
      )
   
    );
  }
}