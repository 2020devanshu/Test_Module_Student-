import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';

class SubmitTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kLightColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(
                    top: 20,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Summary",
                              style: TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor),
                            ),

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
                                // height: 100,
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
                        Expanded(
                          child: GridView.builder(
                            itemCount: 10,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: (orientation == Orientation.portrait) ? 4 : 3),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.help_outline),
                                Text(
                                  "Answered Questions",
                                  style: TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w400,
                                    color: kBlackColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "9/10",
                              style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w400,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [
                                Icon(Icons.timelapse_outlined),
                                Text(
                                  "Time Taken",
                                  style: TextStyle(
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w400,
                                    color: kBlackColor,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "1h 5m (10 m extra)",
                              style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w400,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Text(
                  "NOTE:",
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400,
                    color: kBlackColor,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Text(
                  "You can review and change your responses by clciking on the Question Number above."
                      "Once you are sure you have completed click on submit below.",
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400,
                    color: kBlackColor,
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                alignment: Alignment.centerRight,
                height: 40,
                width: MediaQuery.of(context).size.width*0.6,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Submit the Test",
                      style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        color: kWhiteColor,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,
                    size: 20,
                    color: kWhiteColor,)
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
