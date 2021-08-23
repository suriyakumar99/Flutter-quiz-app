import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function qAnswer;
  final String answerText;
  Answer(this.qAnswer, this.answerText);
  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      child:ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: (){qAnswer();},
        child: Text(answerText,),
        ),
    );
  }
}
