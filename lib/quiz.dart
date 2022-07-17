import 'package:flutter/material.dart';
import './ans.dart';
import './ques.dart';

class Quiz extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final List<Map<String, Object>> ques;
  final int quesIndex;
  Function ansQues;
  final Color color;
  final int total;

  Quiz(this.ques, this.quesIndex, this.ansQues, this.color, this.total);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: Text("Score: ${total.toString()}/50",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.right,),width: double.infinity,padding: EdgeInsets.only(top:15,right:15) ,),
        Ques(
          ques[quesIndex]['ques'],
        ),
        ...(ques[quesIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return ans(() => ansQues(score: answer['score']), answer, color);
        }).toList(),
        Visibility(
            visible: color == Colors.lightBlue ? false : true,
            child: ElevatedButton(
              onPressed: ansQues,
              child: Text('Next'),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 128, 0, 255)),
            ))
      ],
    );
  }
}
