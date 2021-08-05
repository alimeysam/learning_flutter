import 'dart:html';

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;
  void answerQuestion() {
    qIndex = qIndex + 1;
    print(qIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is you favorite colour?',
      'What is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[qIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 is clicked!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                print('Question 3 is selected');
              },
            ),
          ],
        ),
      ),
    );
  }
}
