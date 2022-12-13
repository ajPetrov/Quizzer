import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    var resultText;
    if (resultScore <= 15){
      resultText = 'Low Score but still you good';
    } else if (resultScore <= 20){
      resultText = 'I guess you are alright';
    } else if (resultScore <= 30){
      resultText = 'Pretty handsome I would say';
    } else{
      resultText = "Oh lala";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold
            ),
          ),
          TextButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
