import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    return MyAppPage();
  }
}

class MyAppPage extends State<MyApp>{
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print('Answered question $questionIndex');
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
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            // Text('Hello'),
            ElevatedButton(
              child: Text('Button 1'),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Text('Button 2'),
              onPressed: () => answerQuestion(),
            ),
            ElevatedButton(
              child: Text('Button 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
