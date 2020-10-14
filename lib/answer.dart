import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: SizedBox(
          height: 15,
          child: FittedBox(
            child: Text(
              answerText,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                color: Colors.red[700],
              ),
            ),
          ),
        ),
        color: Colors.indigo[200],
        onPressed: selectHandler,
      ),
    );
  }
}
