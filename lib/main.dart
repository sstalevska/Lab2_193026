import 'package:flutter/material.dart';
import 'package:untitled/clothes_answer.dart';
import './clothes_answer.dart';

import './clothes_question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  //const MyApp({super.key});

  void _iWasTapped(){
    setState(() {
      _questionIndex+=1;
    });
    print('I was tapped');
  }

  var questions = [
    {'question': "Select material of the clothing",
    'answer': ['Cotton', 'Synthetics', 'Leather']},
    {'question': "Select type of clothing",
      'answer': ['Pants', 'Jumper', 'Shirt', 'T-shirt']},
    {'question': "Select colour of the clothing",
      'answer': ['Beige', 'Black', 'Neon green', 'Blue', 'Purple']}, ];
  var _questionIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '193026 Sara Stalevska',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Sara 193026")),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}

