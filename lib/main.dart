// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _total = 0;
  Color color = Colors.lightBlue;
  void _ansQues({int score}) {
    setState(() {
      _quesIndex++;
    });
    if (score != null) {
      _total += score;
    }
  }

  void _reset() {
    setState(() {
      _total = 0;
      _quesIndex = 0;
      color = Colors.lightBlue;
    });
  }

  void _checkAnswer() {
    setState(() {
      _total = 0;
      _quesIndex = 0;
      color = Color.fromARGB(255, 48, 234, 54);
    });
  }

  var _quesIndex = 0;
  static const _ques = [
    {
      'ques': 'What\'s the speed of light?',
      'answers': [
        {'text': '3 x 10^8 m/s', 'score': 10},
        {'text': '3 x 10^6 m/s', 'score': 0},
        {'text': '3 x 10^10 m/s', 'score': 0},
        {'text': '3 x 10^4 m/s', 'score': 0}
      ],
    },
    {
      'ques': 'What\'s the coldest place in the universe?',
      'answers': [
        {'text': 'Boötes Void', 'score': 0},
        {'text': 'Helix Nebula', 'score': 0},
        {'text': 'Bommerang Nebula', 'score': 10}
      ]
    },
    {
      'ques': 'What\'s the largest structure in the universe?',
      'answers': [
        {'text': 'The Giant Arc', 'score': 0},
        {'text': 'Hercules-Corona Borealis', 'score': 10},
        {'text': 'Ton-618', 'score': 0}
      ]
    },
    {
      'ques': 'When was James Webb Telescope launched?',
      'answers': [
        {'text': 'December 18, 2020', 'score': 0},
        {'text': 'December 18, 2021', 'score': 0},
        {'text': 'December 25, 2021', 'score': 10},
        {'text': 'November 14, 2020', 'score': 0},
      ]
    },
    {
      'ques': 'The first real image of black hole taken is of _____',
      'answers': [
        {'text': 'Sagittarius A*', 'score': 0},
        {'text': 'M87*', 'score': 10},
        {'text': 'TON 618', 'score': 0},
        {'text': 'NGC 1277', 'score': 0},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Quiz App')),
          body: _quesIndex < _ques.length
              ? Quiz(_ques, _quesIndex, _ansQues, color, _total)
              : Result(_total, _reset, _checkAnswer, color)),
    );
  }
}
