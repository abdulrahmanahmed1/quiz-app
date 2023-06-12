import 'package:flutter/material.dart';
import 'main.dart';

class Question extends StatelessWidget {
  const Question(this.questionText, {super.key});

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 29.0,color: b),
        textAlign: TextAlign.center,
      ),
    );
  }
}
