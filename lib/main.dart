import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  void _answerQuestion() {
    setState(() {
      if (_qIndex < 2) {
        _qIndex++;
      } else {
        _qIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = const [
      {
        'question': 'What is you favorite colour?',
        'answers': ['Blue', 'Black', 'Red', 'Green'],
      },
      {
        'question': 'What is your favorite animal?',
        'answers': ['Rabbit', 'Lion', 'Eagle', 'Other'],
      },
      {
        'question': 'What\'s your favourite car?',
        'answers': ['BMW', 'Honda', 'Porsche', 'Lamborghini'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              (questions[_qIndex]['question'] as String),
            ),
            ...(questions[_qIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
