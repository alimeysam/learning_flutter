import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'question': 'What is you favorite colour?',
      'answers': [
        {'option': 'Blue', 'score': 5},
        {'option': 'Black', 'score': 10},
        {'option': 'Red', 'score': 7},
        {'option': 'Green', 'score': 2},
      ],
    },
    {
      'question': 'What is your favorite animal?',
      'answers': [
        {'option': 'Rabbit', 'score': 2},
        {'option': 'Lion', 'score': 8},
        {'option': 'Eagle', 'score': 7},
        {'option': 'Snake', 'score': 10},
      ],
    },
    {
      'question': 'What\'s your favourite car?',
      'answers': [
        {'option': 'BMW', 'score': 9},
        {'option': 'Honda', 'score': 8},
        {'option': 'Porsche', 'score': 10},
        {'option': 'Lamborghini', 'score': 11},
      ],
    }
  ];
  var _qIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    _qIndex = 0;
    _totalScore = 0;
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _qIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_qIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                qIndex: _qIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
