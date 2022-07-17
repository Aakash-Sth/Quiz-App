import 'package:flutter/material.dart';

class ans extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final Function handler;
  final Map<String, Object> answer;
  final Color color;
  //final int ansScore;

  ans(this.handler, this.answer, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(
            answer['text'],
            style: TextStyle(fontSize: 16),
          ),
          textColor: Colors.white,
          onPressed: handler,
          color: answer['score'] == 0 ? Colors.lightBlue : color //,
          ),
    );
  }
}
