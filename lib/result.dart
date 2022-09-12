import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final int fscore; 
  final Function resetquiz;
  result(this.fscore, this.resetquiz);

  String get Perform {
    String remark;
    if (fscore == 30) {
      remark = "Vibe matched!";
    } else if (fscore < 20) {
      remark = "you are different !";
    } else {
      remark = "you are bad.";
    }
    return remark;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          Perform,
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Column(
        children: [
          RaisedButton(
            child: Text(
              "Restart",
              style: TextStyle(fontSize: 40,),
            ),
            color: Colors.blue,
            onPressed: resetquiz,
          )
          
        ],
      ),
    ]);
  }
}
