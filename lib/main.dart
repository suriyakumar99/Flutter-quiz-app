import 'package:flutter/material.dart';
import 'package:first_app/question.dart';
import 'package:first_app/answer.dart';
import 'package:first_app/score.dart';
void main(){
    runApp(MyApp());

}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  var qIndex=0;
  var finalScore=0;
  void resQuiz(){
    setState(() {
      qIndex=0;
      finalScore=0;
    });
  }
  void qAnswer(int score){
    finalScore+=score;
    print(finalScore);
    setState(() {
      qIndex++;
    });
  }
  var questions=[
    {'questionText':'What is your favourite color?',
      'answers':[ {'text':'Red', 'score': 10},
                  {'text':'Blue', 'score':8},
                  {'text':'Black','score':6},
                  {'text':'White','score':4},],
    },
    {'questionText':'Which is your favourite pet?',
      'answers':[ {'text':'Dog', 'score': 6},
        {'text':'Cat', 'score':4},
        {'text':'Fish','score':8},
        {'text':'Parrot','score':10},],
    },
    {'questionText':'Which is your favourite film genre?',
      'answers':[{'text':'Action', 'score': 8},
        {'text':'Romance', 'score':10},
        {'text':'Horror','score':4},
        {'text':'Scifi','score':6},],
    },
  ];

  @override
  Widget build (BuildContext context){
        return MaterialApp(home: Scaffold(
          appBar: AppBar(title: Text('My First App'),),
          body: qIndex<questions.length? Column(children: [
            Question(questions[qIndex]['questionText'] as String),
            ...(questions[qIndex]['answers'] as List<Map<String,Object>>).map((answer){
                  return Answer(()=>qAnswer(answer['score'] as int), answer['text'] as String);
        },).toList(),
            ElevatedButton(onPressed: null, child: Text('hey'))
          ],)

              :Score(finalScore, resQuiz)
        ),);
  }
}
