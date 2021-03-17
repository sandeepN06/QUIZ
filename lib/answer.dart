import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler; //Pointer

  final String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(130.0),
        ),
        color: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
