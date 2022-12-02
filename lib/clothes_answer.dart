import 'package:flutter/material.dart';


class ClothesAnswer extends StatelessWidget{

   String answerText;

   VoidCallback  tapped;

   ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightGreen,
        ),
        child: Text(answerText,
          style: TextStyle(color: Colors.red),
        ),
        onPressed: tapped
    );


  }


}