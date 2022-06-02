// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome !!';
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
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
