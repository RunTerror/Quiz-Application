import 'package:flutter/material.dart';
import './Question.dart';
import './button.dart';

class Quiz extends StatelessWidget {
  final int index;
  final List<Map<String, Object>> Questions;
  final Function pressing;

  Quiz({
    @required this.index,
    @required this.Questions,
    @required this.pressing,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Que_wid(
        Questions[index]['Key'] as String,
      ),
      ...(Questions[index]['key'] as List<Map<String, Object>>).map((key) {
        return button(() => pressing(key['score']), key['Text']);
      }).toList()
    ]);
  }
}
