import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';

class MatchTheFollowing extends StatefulWidget {
  @override
  _MatchTheFollowingState createState() => _MatchTheFollowingState();
}

class _MatchTheFollowingState extends State<MatchTheFollowing> {
  int radioValue = 0;
  double _finalResult = 0.0;
  bool ins = false;

  void handleRadioValueChanged(int value){
    setState(() {
      radioValue = value;
    });
  }
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
              width: MediaQuery.of(context).size.width*0.9,
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
                          "Summary",
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
                    Container(
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
                    Text(
                      "1h 5m left",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor,
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
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                    color: kLightColor

                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,
                  ),                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "01",
                          style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kBlackColor,
                          ),
                        ),Text(
                          "  of 12",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward,
                      color: kBlackColor,)
                  ],
                ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "1h 5m left",
                      style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        color: kGreyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,
                          color: kPrimaryColor,),
                        Text(
                          " 5",
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                            color: kBlackColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "ID: Question Title here",
                style: TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600,
                  color: kGreyColor,
                ),
              ),

              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kLightColor

                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05,
                        top: 20
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Q 1 ",
                              style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                            ), Container(
                              width: MediaQuery.of(context).size.width*0.7,

                              child: Text(
                                "Match the capital cities",
                                style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w400,
                                  color: kBlackColor,
                                ),
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),

              ins==false?GestureDetector(
                onTap: (){
                  setState(() {
                    ins = true;
                  });
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 40,
                  decoration: BoxDecoration(
                      color: kDarkColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "Instructions",
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ):
              GestureDetector(
                onTap: (){
                  setState(() {
                    ins = false;
                  });
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 150,
                  decoration: BoxDecoration(
                      color: kDarkColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05,
                        top: 10
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Instructions",
                          style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Title",
                          style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),Text(
                          "\tPart A",
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Instructions / Notes",
                          style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                              "Ut blandit eleifend eget massa semper. Arcu massa viverra fermentum feu",
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                    top: 10
                ),
                child: Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.chat_bubble, size: 26,
                          color: Colors.red),

                      Container(
                        alignment: Alignment.centerRight,
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.4,

                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                "Click to Submit",
                                style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  color: kGreyColor,
                                ),
                              ),
                              Icon(Icons.done,
                                color: kPrimaryColor,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05,
                    top: 10
                ),
                child: Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: showDialog1,
                        child: Row(
                          children: [
                            Icon(Icons.map_outlined, size: 35,
                                color: kPrimaryColor),
                            Text(
                              "Summary",
                              style: TextStyle(
                                fontSize: 12,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w400,
                                color: kBlackColor,
                              ),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        alignment: Alignment.centerRight,
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.4,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child: Center(
                          child: Text(
                            "Next Question",
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ), SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
