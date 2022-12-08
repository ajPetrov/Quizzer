import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?',
      'What\'s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzer app'),
      ),
        body: Column(
          children: [
            Text('The question'),
            ElevatedButton(
                onPressed: () => print('Answer 1 chosen'),
                child: Text('Answer 1')
            ),
            ElevatedButton(
                onPressed: () => print('Answer 2 chosen'),
                child: Text('Answer 2')
            ),
            ElevatedButton(
                onPressed: () => print('Answer 3 chosen'),
                child: Text('Answer 3')
            ),
          ],),
      ),
    );
  }
}
