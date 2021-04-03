import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';

class StartTest extends StatefulWidget {
  @override
  _StartTestState createState() => _StartTestState();
}

class _StartTestState extends State<StartTest> {
  void showDialog1() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.center,
          child: Container(
              margin: EdgeInsets.only(
                top: 80,
              ),
              width: MediaQuery.of(context).size.width,
              height: 450,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Section Details & Instruction",
                          style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor),
                        ),
                        Icon(
                          Icons.close,
                          color: kBlackColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Title",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Part A",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Instructions",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                        "Ut blandit eleifend eget massa semper. Arcu massa viverra fermentum feu",
                        style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      height: 100,
                      child: Text(
                        "Associated Questions",
                        style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 30,
                      decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Q1, Q2, Q3",
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

  void showDialog2() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.center,
          child: Container(
              margin: EdgeInsets.only(
                top: 80,
              ),
              width: MediaQuery.of(context).size.width*0.9,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Question Paper Details",
                          style: TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor),
                        ),
                        Icon(
                          Icons.close,
                          color: kBlackColor,
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 35,
                      decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Mathematics",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Total:",
                              style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor,
                              ),
                            ),
                            Text(
                              "10 Questions",
                              style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                            ),
                            Container(
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.wine_bar,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        "20",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kBlackColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.label_important,
                                    color: Colors.yellow,
                                    size: 30,
                                  ),
                                  Container(
                                    child: Center(
                                      child: Text(
                                        "20",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: kBlackColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Text(
                      "Question paper Title",
                      style: TextStyle(
                          fontSize: 10,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Some title here",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Question Paper Id 1A74B",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Included Chapters",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 20,
                      decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Integers, Whole numbers, Equations",
                        style: TextStyle(
                          fontSize: 10,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Included Topics",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 20,
                      decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Topic34, Topicdfdfd, Topic2345256345",
                          style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Learning Outcomes",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 20,
                      decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "LC1,",
                          style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Included Question Types  ",
                      style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 20,
                      decoration: BoxDecoration(
                          color: kLightColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Objectives type",
                          style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 35,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Connect with Teacher",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 30,
                decoration: BoxDecoration(
                    color: kLightColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Mathematics",
                    style: TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: showDialog2,
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 30,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(
                          "Begin Test",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: kWhiteColor,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: kGreyColor,
                width: MediaQuery.of(context).size.width * 0.6,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Question Paper Title here",
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "1h 5m",
                style: TextStyle(
                  fontSize: 14,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: kBlackColor,
                        ),
                      ),
                      Text(
                        "10 Questions",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wine_bar,
                              color: Colors.yellow,
                              size: 30,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "20",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.label_important,
                              color: Colors.yellow,
                              size: 30,
                            ),
                            Container(
                              child: Center(
                                child: Text(
                                  "20",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1,
                      right: MediaQuery.of(context).size.width * 0.05,
                      bottom: 5),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 25,
                              child: Row(
                                children: [
                                  Container(
                                    width: 1,
                                    height: 60,
                                    color: kGreyColor,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              height: 25,
                              child: Row(
                                children: [
                                  Container(
                                    width: 1,
                                    height: 60,
                                    color: kGreyColor,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Question ${index + 1}",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: kBlackColor),
                                  ),
                                  Text(
                                    "Objective Types",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: kGreyColor),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: kGreyColor),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: kPrimaryColor,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }))
            ],
          ),
        ),
      ),
    );
  }
}
