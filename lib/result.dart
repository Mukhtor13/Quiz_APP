import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback selectHandler;
  const Result(this.resultScore, this.selectHandler, {super.key});

  String get resultPhase {
    var resultText = 'You did it';

    if (resultScore > 95) {
      resultText = 'Your score: 100';
    } else if (resultScore > 85) {
      resultText = 'Your score: 90';
    } else if (resultScore > 75) {
      resultText = 'Your score: 80';
    } else if (resultScore > 65) {
      resultText = 'Your score: 70';
    } else if (resultScore > 55) {
      resultText = 'Your score: 60';
    } else if (resultScore > 45) {
      resultText = 'Your score: 50';
    } else if (resultScore > 35) {
      resultText = 'Your score: 40';
    } else if (resultScore > 25) {
      resultText = 'Your score: 30';
    } else if (resultScore > 15) {
      resultText = 'Your score: 20';
    } else if (resultScore > 5) {
      resultText = 'Your score: 10';
    } else {
      resultText = 'Your score: 0';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhase,
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(onPressed: selectHandler, child: const Text('Restart Quiz'))
      ],
    ));
  }
}
