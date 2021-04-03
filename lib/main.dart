import 'package:flutter/material.dart';
import 'package:student_app/ui/constants.dart';
import 'package:student_app/ui/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: kLightColor
        ),
        primarySwatch: Colors.blue,
      ),
      home: Welcome(),
    );
  }
}