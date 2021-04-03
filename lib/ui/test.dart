import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  String _subject;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,

          child: Column(
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kLightColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60)
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,

                      child: Text(
                        "Test your Self\nToday",
                        style: TextStyle(
                          fontSize: 24,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      height: 40,
                      child: Center(
                        child: DropdownButton<String>(
                          focusColor:Colors.white,
                          value: _subject,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor:Colors.black,
                          items: <String>[
                            'English',
                            'Hindi',
                            'Maths',

                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value,style:TextStyle(color:Colors.black),),
                            );
                          }).toList(),
                          hint:Text(
                            "Subject Select",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor),
                          ),
                          onChanged: (String value) {
                            setState(() {
                              _subject = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context , int index){
                  return Padding(
                    padding:  EdgeInsets.only(
                      left:MediaQuery.of(context).size.width*0.1,
                      right:MediaQuery.of(context).size.width*0.1,
                      bottom: 10
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kLightColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: kGreyColor,
                            spreadRadius: 0.2,
                            blurRadius: 1
                          )
                        ]
                      ),
                      height: 70,
                      child: Padding(
                        padding:  EdgeInsets.only(
                            left:MediaQuery.of(context).size.width*0.05,
                            right:MediaQuery.of(context).size.width*0.05,
                        ),                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Practice Math Exam",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: kBlackColor),
                                  ),Text(
                                    "Questions 20",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: kGreyColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 60,

                              decoration: BoxDecoration(
                            color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                              child: Center(
                                child: Text(
                                  "Take\nTest",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: kWhiteColor),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),

              )
            ],
          ),
        ),
      ),
    );
  }
}
