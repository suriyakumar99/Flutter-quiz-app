import 'package:flutter/material.dart';

class  Score extends StatelessWidget {

  final totalScore;
  final Function resQuiz;
  String get resultPhrase {
    if (totalScore == 30)
      return 'You are amazing';
    else if (totalScore < 30 && totalScore >= 24)
      return 'You are innocent';
    else
      return 'Better luck next time ;(';
  }

  Score(this.totalScore, this.resQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text(resultPhrase,
                     style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)
            ),
            ElevatedButton(onPressed:(){resQuiz();} , child: Text('Restart Quiz'))  ],
        )
    );
  }
}
