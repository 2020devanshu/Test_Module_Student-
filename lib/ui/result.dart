import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';

class Result extends StatefulWidget {

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

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
                            "Your\nResults",
                            style: TextStyle(
                              fontSize: 24,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor,
                            ),
                          ),
                          Container(
                            // height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.wine_bar,
                                  color: Colors.yellow,
                                  size: 45,
                                ),
                                Container(
                                  child: Center(
                                    child: Text(
                                      "20",
                                      style: TextStyle(
                                          fontSize: 18,
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Real Math Exam",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kBlackColor),
              ),Text(
                "Time Taken 30 mins",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: kBlackColor),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(

                itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (MediaQuery.of(context).orientation == Orientation.portrait) ? 4 : 2),
                  itemBuilder: (BuildContext context, int index) {

                    return Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 1,
                                    spreadRadius: 0.5,
                                    color: kPrimaryColor
                                )
                              ]
                          ),
                          child: Center(
                            child: Text(
                              "Q${index+1}",
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                          bottom: 0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Sandeep (Teacher)\nEvaluate Notes",
                            style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: kGreyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                          "Neque tristique cursus vel iaculis varius vitae"
                          " egestas interdum. Cursus dui auctor nulla lobortis hendrerit duis tincidunt purus gravida. ",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        color: kGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                height: 40,
                width: MediaQuery.of(context).size.width*0.6,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Under Stand",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
