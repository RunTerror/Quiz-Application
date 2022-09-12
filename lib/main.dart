import 'package:flutter/material.dart';
import './Quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  static const _Questions = [
    {
      'Key': 'What is your favourite color ?',
      'key': [
        {'Text': 'Red', 'score': 2},
        {'Text': 'Orange', 'score': 5},
        {'Text': 'Black', 'score': 10},
        {'Text': 'White', 'score': 9}
      ]
    },
    {
      'Key': 'What do you want to learn ?',
      'key': [
        {'Text': 'CP', 'score': 10},
        {'Text': 'flutter', 'score': 10},
        {'Text': 'Web-d', 'score': 5},
        {'Text': 'c++', 'score': 7},
      ]
    },
    {
      'Key': 'Who is your favourite instructor ?',
      'key': [
        {'Text': 'max', 'score': 10},
        {'Text': 'max', 'score': 10},
        {'Text': 'max', 'score': 10},
        {'Text': 'max', 'score': 10},
      ],
    }
  ];
  var _totalscore = 0;
  void _pressing(int score) {
    _totalscore += score;
    setState(() {
      _index += 1;
    });
    print(_index);
    if (_index < _Questions.length) {
      print('More questions are present.');
    }
  }

  void _resetquiz() {
    setState(() {
      _index = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Questions=[]  // it does not work if const is used with variable
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First Application')),
      body: _index < _Questions.length
          ? Quiz(
              Questions: _Questions,
              index: _index,
              pressing: _pressing,
            )
          : result(_totalscore, _resetquiz),
    ));
  }
}
