import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final int total;
  final Function reset;
  final Function checkAnswer;
  final Color color;
  double size = 30;
  double topMargin = 175;

  Result(this.total, this.reset, this.checkAnswer, this.color);
  String get resultText {
    String text = '';
    if (color == Colors.lightBlue) {
      text += "Your score is $total \n Remarks: ";
      if (total == 50) {
        text += "Great";
      } else if (total > 30) {
        text += "Good";
      } else if (total >= 20) {
        text += "Average";
      } else {
        text += "Bad";
      }
    } else {
      size = 36;
      topMargin = 205;
    }
    text += '\nThank you!!';
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(50, topMargin, 50, 100),
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(
                fontSize: size,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 101, 251)),
            textAlign: TextAlign.center,
          ),
          color == Colors.lightBlue
              ? Container(
                  child: ElevatedButton(
                    onPressed: checkAnswer,
                    child: Text('Check Answers'),
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ),
                  margin: EdgeInsets.only(top: 15),
                )
              : Text(''),
          FlatButton(
              child: Text('Reset'),
              color: Color.fromARGB(255, 183, 229, 255),
              textColor: Color.fromARGB(255, 20, 147, 250),
              onPressed: reset)
        ],
      ),
    );
  }
}
