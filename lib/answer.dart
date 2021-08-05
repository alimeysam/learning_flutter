import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final VoidCallback selectedHandler;
  final String answerText;

  Answer(this.selectedHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 25),
        ),
        onPressed: selectedHandler,
      ),
    );
  }
}
