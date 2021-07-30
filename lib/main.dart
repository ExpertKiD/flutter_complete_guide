import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> questions = [
    'What\'s ypur favorite color?',
    'What\'s your favorite animal?'
  ];

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      print('Answer chosen!');
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: Column(children: <Widget>[
              Text('The question!'),
              RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
              RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
              RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion)
            ])));
  }
}
