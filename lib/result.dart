import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText = "";
    if (resultScore < 100) {
      resultText = 'You no sabi 😐';
    } else if (resultScore >= 100 && resultScore < 250) {
      resultText = 'You sabi small 🤔';
    } else if (resultScore >= 250 && resultScore < 350) {
      resultText = 'You sabi pass small 😁';
    } else if (resultScore >= 350 && resultScore < 500) {
      resultText = 'You be sure guyy 😄';
    } else {
      resultText = 'You sabi dieeeeeee 💯';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(70),
              child: Text(
                resultPhrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'Your Score: $resultScore / 500',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.all(70),
              child: ElevatedButton(
                onPressed: resetHandler,
                child: Text('Reset Quiz'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
