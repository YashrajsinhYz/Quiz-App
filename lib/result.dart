// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Congratulations, You did it !",
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
