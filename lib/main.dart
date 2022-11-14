import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'Qaysi kvadrat tenglamaning diskriminanti musbat?',
      'answer': [
        {'text': '-2x²+3x-7=0', 'score': 0},
        {'text': ' x² - x -1 = 0', 'score': 10},
        {'text': '9x²-6x+1=0', 'score': 0},
        {'text': '3x²+5x+1=0', 'score': 0},
      ],
    },
    {
      'questionText': '6(3-x²)=13+5(1-x²) tenglamani yeching.',
      'answer': [
        {'text': '  x=0 ', 'score': 10},
        {'text': '  x=6 ', 'score': 0},
        {'text': ' x=-6 ', 'score': 0},
        {'text': 'x=+-6', 'score': 0},
      ],
    },
    {
      'questionText': 'Qaysi kvadrat tenglamaning diskriminanti 1 gateng emas?',
      'answer': [
        {'text': '6x²-5x+1=0 ', 'score': 0},
        {'text': '  x²-3x-1=0  ', 'score': 10},
        {'text': '2x²-3x+1=0', 'score': 0},
        {'text': '2x²+7x+6=0', 'score': 0},
      ],
    },
    {
      'questionText': '10x²-2x-10=0 tenglama ildizlari yig\'indisinitoping.',
      'answer': [
        {'text': '-1', 'score': 0},
        {'text': '0 ', 'score': 0},
        {'text': '1 ', 'score': 0},
        {'text': '2 ', 'score': 10},
      ]
    },
    {
      'questionText':
          '3(x+1)-x<4 tengsizlikning eng katta butunyechimini toping.',
      'answer': [
        {'text': '0 ', 'score': 10},
        {'text': '-1', 'score': 0},
        {'text': '1 ', 'score': 0},
        {'text': '0,4', 'score': 0},
      ]
    },
    {
      'questionText': 'Which is another way to say "wait"?',
      'answer': [
        {'text': 'join on ', 'score': 0},
        {'text': 'hold on', 'score': 10},
        {'text': 'give up', 'score': 0},
        {'text': 'back on', 'score': 0},
      ]
    },
    {
      'questionText': 'He spends his time _____ the banks of the river."?',
      'answer': [
        {'text': '   on   ', 'score': 10},
        {'text': 'about', 'score': 0},
        {'text': '    to  ', 'score': 0},
        {'text': '    in   ', 'score': 0},
      ]
    },
    {
      'questionText': 'The house is 50 meters _____ the sea.',
      'answer': [
        {'text': 'from', 'score': 0},
        {'text': ' by  ', 'score': 0},
        {'text': '  to  ', 'score': 0},
        {'text': '  for ', 'score': 10},
      ]
    },
    {
      'questionText': 'He walked _____ the hill.',
      'answer': [
        {'text': 'at', 'score': 0},
        {'text': 'out', 'score': 0},
        {'text': 'to', 'score': 0},
        {'text': 'up', 'score': 10},
      ]
    },
    {
      'questionText': 'How many children _____ they _____?',
      'answer': [
        {'text': 'have/get', 'score': 0},
        {'text': 'have/got', 'score': 10},
        {'text': 'does/got', 'score': 0},
        {'text': ' has/got ', 'score': 0},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    //print(_questionIndex);

    if (_questionIndex < _questions.length) {
      //print('We have no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First App!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
