import 'package:flutter/material.dart';
import 'answer.dart';
import './question.dart';

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
  final questions = const [
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
        body: _questionIndex < questions.length ? Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ) : Center(child: Text('You finished the quiz'),),
      ),
    );
  }
}
