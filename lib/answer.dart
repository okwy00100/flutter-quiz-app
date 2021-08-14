import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
      child: ElevatedButton(
        child: Text('Button 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
