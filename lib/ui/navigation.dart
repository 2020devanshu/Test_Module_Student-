import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';
import 'package:student_app/ui/leaderBoard.dart';
import 'package:student_app/ui/test.dart';
import 'package:student_app/ui/history.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex=0;
  var list = [
    Test1(),
    LeaderBoard(),

    History(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        backgroundColor: kLightColor,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kGreyColor,
        selectedLabelStyle: TextStyle(
          fontSize: MediaQuery.of(context).size.width*0.03,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 0,
        ),
        showUnselectedLabels: false,
        onTap: (list) {
          // Respond to item press.
          setState(() => _selectedIndex = list);
        },
        items: [
          BottomNavigationBarItem(
              label: "Test",
              icon: Icon(Icons.receipt_long_outlined),
              activeIcon: Icon(Icons.receipt_long)
          ),
          BottomNavigationBarItem(
              label: "Leader Board",
              icon: Icon(Icons.wine_bar_outlined),
              activeIcon: Icon(Icons.wine_bar)
          ),
          BottomNavigationBarItem(
              label: "History",
              icon: Icon(Icons.history_outlined),
              activeIcon: Icon(Icons.history)
          ),

        ],
      ),
      body: list[_selectedIndex],
    );
  }
}
