import 'package:flutter/material.dart';

class AnswerBt extends StatelessWidget {
  const AnswerBt({super.key,
  required this.textBm,
   required this.onTap,
  });
  final String textBm;
  final void Function () onTap;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical:10,horizontal: 40),
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 40, 1, 95) ,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            )
 
          ),
            onPressed: onTap, child:Text(textBm,textAlign: TextAlign.center,) );
  }
}