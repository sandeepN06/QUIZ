import 'package:flutter/material.dart';

import './quiz.dart';

import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite crypto?',
      'answers': [{'text':'Bitcoin','score':10} ,{'text':'Ethereum','score':20},{'text':'Waves','score':5}],
    },
    {
      'questionText': 'What is your age?',
      'answers': [{'text':'10','score':5} ,{'text':'20','score':10},{'text':'30','score':15}],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz()
  {
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print("Go on");
    } else {
      print("Thats it");
    }

    // print('Answer Chosen');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ APP"),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion : _answerQuestion , questionIndex : _questionIndex , questions: _questions )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
