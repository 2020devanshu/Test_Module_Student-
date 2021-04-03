import 'package:flutter/material.dart';
import 'package:student_app/ui/fillInTheBlanks.dart';
import 'package:student_app/ui/freeTextAnswer.dart';
import 'package:student_app/ui/navigation.dart';
import 'package:student_app/ui/objective.dart';
import 'package:student_app/ui/numericRange.dart';
import 'package:student_app/ui/sequencinSentencesQuestions.dart';
import 'package:student_app/ui/trueFalse.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return FillInTHeBlacks();
              }));
            },
            child: Text("Start"),
          ),
        ),
      ),


    );
  }
}
