import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
                height: 110,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: kLightColor,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(60))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your\nTests",
                            style: TextStyle(
                              fontSize: 24,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor,
                            ),
                          ),
                          Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: Colors.yellow, width: 1),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 39,
                                    child: Center(
                                      child: Text(
                                        "Under Review",
                                        style: TextStyle(
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w600,
                                          color: kBlackColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 1,
                                    color: kGreyColor,
                                    width: double.infinity,
                                  ),
                                  Container(
                                    color: Colors.yellow[600],
                                    height: 38,
                                    child: Center(
                                      child: Text(
                                        "Evaluated",
                                        style: TextStyle(
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w600,
                                          color: kBlackColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                            right: MediaQuery.of(context).size.width * 0.1,
                            bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: kLightColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: kGreyColor,
                                    spreadRadius: 0.2,
                                    blurRadius: 1)
                              ]),
                          height: 70,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.05,
                              right: MediaQuery.of(context).size.width * 0.05,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Practice Math Exam",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: kBlackColor),
                                      ),
                                      Text(
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
                                  width: 80,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.yellow[500], width: 2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      "Under\nReview",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: kBlackColor),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: kLightColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: kGreyColor,
                        spreadRadius: 0.2,
                        blurRadius: 1)
                  ]),
              height: 70,
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Practice Math Exam",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor),
                          ),
                          Text(
                            "Questions 20",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: kGreyColor),
                          ),
                        ],
                      ),
                    ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.point_of_sale,
                       color: Colors.yellow[500],),
                       Text(
                         "32 Coins",
                         style: TextStyle(
                             fontSize: 12,
                             fontWeight: FontWeight.w400,
                             color: kBlackColor),
                       ),
                     ],
                   )
                  ],
                ),
              ),
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}
