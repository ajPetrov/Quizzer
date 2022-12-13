import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

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
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 15},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 25},
        {'text': 'Hippo', 'score': 5},
        {'text': 'Tiger', 'score': 15}
      ],
    },
    {
      'questionText': 'Which is your favourite Harry Potter house?',
      'answers': [
        {'text': 'Gryffindor', 'score': 10},
        {'text': 'Slytherin', 'score': 30},
        {'text': 'Ravenclaw', 'score': 25},
        {'text': 'Hufflepuff', 'score': 5}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzer app'),
      ),
        body: _questionIndex < _questions.length ? Quiz(questions: _questions, answerQuestion: _answerQuestion, questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
