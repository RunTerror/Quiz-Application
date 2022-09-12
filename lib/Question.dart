import 'package:flutter/material.dart';

class Que_wid extends StatelessWidget {
  final String que;
  Que_wid(this.que);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        que,
        style: TextStyle(fontSize: 30,color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
