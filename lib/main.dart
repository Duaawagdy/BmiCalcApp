import 'package:bmi/bmi.dart';
import 'package:bmi/login.dart';
import 'package:flutter/material.dart';
import 'package:bmi/bmi.dart';
import 'package:bmi/bmiresultscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LOGIN(),
    );
  }

}
