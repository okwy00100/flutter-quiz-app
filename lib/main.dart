import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart';
import 'package:flutter_quiz_app/result.dart';

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
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 30},
        {'text': 'Shawarma', 'score': 20},
        {'text': 'Pasta', 'score': 50},
        {'text': 'Salad', 'score': 100}
      ],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 30},
        {'text': 'Red', 'score': 20},
        {'text': 'Green', 'score': 50},
        {'text': 'Black', 'score': 100}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 100},
        {'text': 'Cat', 'score': 20},
        {'text': 'Echidna', 'score': 50},
        {'text': 'Unicorn', 'score': 70}
      ]
    },
    {
      'questionText': 'What\'s your favorite pastime?',
      'answers': [
        {'text': 'Reading', 'score': 50},
        {'text': 'Video Games', 'score': 100},
        {'text': 'Outdoor Sports', 'score': 70},
        {'text': 'Working', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite music genre?',
      'answers': [
        {'text': 'Rock', 'score': 70},
        {'text': 'Pop', 'score': 20},
        {'text': 'Alternative', 'score': 100},
        {'text': 'Jazz', 'score': 50}
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
    });
    print('Answered question $_questionIndex');
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
    print('Current score is $_totalScore');
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex =0;
      _totalScore = 0;
    });

    print('Quiz reset! Current score is $_totalScore');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
