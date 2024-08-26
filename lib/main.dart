import 'package:collegeapp/Aboutus.dart';
import 'package:collegeapp/signin.dart';
import 'package:collegeapp/signup.dart';
import 'package:collegeapp/splash.dart';
import 'package:flutter/material.dart';

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
        title: 'College APP',
        //theme: lightMode,
        home: Aboutus());
  }
}
