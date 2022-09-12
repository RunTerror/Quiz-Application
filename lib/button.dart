import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Function abhi;
  final String ans;
  button(this.abhi, this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.orange),
        //   foregroundColor: MaterialStateProperty.all(Colors.white),
        // ),
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          onPrimary: Colors.black,
        ),
        child: Text(
          ans,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: abhi,
      ),
    );
  }
}
