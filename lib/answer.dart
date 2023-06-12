import 'package:flutter/material.dart';
import 'main.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key, required this.answerText, required this.x})
      : super(key: key);
  final String answerText;
  final Function x;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: p),
        onPressed: () => x(),
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
