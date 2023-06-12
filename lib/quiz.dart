import 'package:flutter/material.dart';
import 'answer.dart';
import 'main.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key,
      required this.question,
      required this.questionIndex,
      required this.questionAnswer})
      : super(key: key);
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int) questionAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question((question[questionIndex]['questionText'].toString())),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((a) {
          return Answer(
              answerText: a['text'].toString(),
              x: () => questionAnswer(int.parse(a['score'].toString())));
        }),
      ],
    );
  }
}
