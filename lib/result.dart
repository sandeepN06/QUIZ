import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase {
    String resultText;
    if(resultScore<=8)
      {
        resultText = "<=8  $resultScore";
      }
    else
      {
        resultText = ">=8  $resultScore";
      }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children : <Widget>[
        Text(
        resultPhrase,
        style: TextStyle(color: Colors.white54, fontSize: 50,fontWeight : FontWeight.bold),
      ),
          FlatButton(child :Text('Restart Quiz'), onPressed: resetHandler,color:Colors.white),
      ],
      ),
    );
  }
}
