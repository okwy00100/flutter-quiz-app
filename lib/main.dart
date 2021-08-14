import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppPage();
  }
}

class _MyAppPage extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answered question $_questionIndex');
  }

  // void answerQuestion2() {
  //   print('Pressed Button 2');
  // }

  // void answerQuestion3() {
  //   print('Pressed Button 3');
  // }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your name?',
      'What\'s your favorite color?',
      'What\'s your favorite pet?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            // Text('Hello'),
            ElevatedButton(
              child: Text('Button 1'),
              onPressed: () => _answerQuestion(),
            ),
            ElevatedButton(
              child: Text('Button 2'),
              onPressed: () => _answerQuestion(),
            ),
            ElevatedButton(
              child: Text('Button 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
