import 'package:flutter/material.dart';
import 'quiz.dart';

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
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Rabbit', 'Snake', 'Hippo', 'Tiger'],
    },
    {
      'questionText': 'Which is your favourite Harry Potter house?',
      'answers': ['Gryffindor ', 'Slytherin', 'Ravenclaw', 'Hufflepuff'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
            : Center(child: Text('You finished the quiz'),),
      ),
    );
  }
}
