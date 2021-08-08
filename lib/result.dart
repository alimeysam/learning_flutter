import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  String get resultPhrase {
    var resText = 'You did it!';
    if (score <= 12) {
      resText = 'You are awesome and innocent!';
    } else if (score <= 15) {
      resText = 'Pretty likable';
    } else if (score <= 18) {
      resText = 'You are ... strange?!';
    } else {
      resText = 'You are so bad!';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
            fontSize: 30,
            color: Colors.cyan,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}
