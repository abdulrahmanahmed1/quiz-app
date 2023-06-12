import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.reset, required this.resultScore})
      : super(key: key);
  final Function() reset;
  final int resultScore;

  String get str {
    String s;
    if (resultScore >= 70) {
      s = 'Very Good';
    } else if (resultScore >= 40) {
      s = 'Good';
    } else {
      s = 'Bad';
    }
    return s;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(50.0),
            child:  Text(
              'Done !',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: b,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text(
              str,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: b,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30.0),
            child: Text(
              'Your score is ${resultScore.toString()}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: b,
              ),
            ),
          ),
          TextButton(
            onPressed: reset,
            child: Text(
              'Restart The App',
              style: TextStyle(
                color: p,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
