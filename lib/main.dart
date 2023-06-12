import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;
Color g = Colors.teal;
Color p = Colors.purple;

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  bool isSwitch = false;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your university ?',
      'answers': [
        {'text': 'USC', 'score': 10},
        {'text': 'AUC', 'score': 20},
        {'text': 'JUC', 'score': 30},
        {'text': 'AUI', 'score': 40},
      ]
    },
  ];

  void answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: p,
          title: const Text('Quiz App'),
          actions: [
            Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                  if (isSwitch == true) {
                    w = b;
                    b = Colors.white;
                    p = g;
                    g = Colors.purple;
                  } else {
                    b = w;
                    w = Colors.white;
                    g = p;
                    p = Colors.purple;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black38,
            ),
          ],
        ),
        body: Container(
          color: w,
          height: double.infinity,
          child: SingleChildScrollView(
            child: _questionIndex < _questions.length
                ? Quiz(
                    question: _questions,
                    questionAnswer: answerQuestion,
                    questionIndex: _questionIndex,
                  )
                : Result(
                    reset: resetQuiz,
                    resultScore: _totalScore,
                  ),
          ),
        ),
      ),
    );
  }
}
