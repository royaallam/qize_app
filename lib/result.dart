import 'package:flutter/material.dart';


class ResultQiue extends StatelessWidget {
  const ResultQiue({super.key,required this.chooseAnswer,});
  

  final List <String> chooseAnswer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('You answered x out of y question correct'),
            SizedBox(height: 30,),
            Text('List of answers and question...'),
              SizedBox(height: 30,),
              TextButton(onPressed: (){},
               child: Text("Restart quiz!")),
          ],
        ),
      ),
    );
  }
}