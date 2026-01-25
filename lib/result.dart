import 'package:flutter/material.dart';
import 'package:flutter_qize_app/data/question.dart';


class ResultQiue extends StatelessWidget {
  const ResultQiue({super.key,required this.chooseAnswer,});
  

  final List <String> chooseAnswer;
   
    List<Map<String,Object>>  getSumaryData(){

final List<Map<String,Object>>summary=[];
for (var i=0;i<chooseAnswer.length;i++){
  summary.add(
    {'question_index':i,
    'question':question[i],
    'correct_answer':question[0],
    'user_answer':chooseAnswer[i]
    }
  );
}
return summary;
   }

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