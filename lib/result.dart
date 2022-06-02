// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome, cool !!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty good !!';
    } else if (resultScore <= 16) {
      resultText = 'You are...strange ?!';
    } else {
      resultText = 'So bad !!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.red, primary: Colors.white),
              onPressed: resetHandler,
              child: Text('Restart Quiz'),
            ),
          )
        ],
      ),
    );
  }
}
