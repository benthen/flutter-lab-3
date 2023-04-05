import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 3) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 8) {
      resultText = "Pretty likeable!";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(resultScore.toString(),
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      Text(
        resultPhrase,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
      ElevatedButton(onPressed: resetQuiz, child: const Text('Restart Quiz')),
    ]));
  }
}
