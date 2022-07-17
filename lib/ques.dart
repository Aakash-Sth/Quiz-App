import 'package:flutter/material.dart';

class Ques extends StatelessWidget {
  //const ques({ Key? key }) : super(key: key);
  final String quesText;
  Ques(this.quesText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
        child: Text(
          quesText,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ));
  }
}
