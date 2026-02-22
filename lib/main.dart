import 'package:flutter/material.dart';
import 'package:flutter_qize_app/screen_one.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return MaterialApp(
  debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    home:StartScreen(),
    
    
   );
  }
}
