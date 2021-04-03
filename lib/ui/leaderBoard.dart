import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
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
                        "Your Class\nLeader Board",
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
                                Row(
                                  children: [
                                    CircleAvatar(

                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 60,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Fatima",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: kBlackColor),
                                          ),
                                          Text(
                                            "198 coins",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: kGreyColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.point_of_sale,
                                      color: Colors.yellow[500],),
                                    
                                  ],
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
