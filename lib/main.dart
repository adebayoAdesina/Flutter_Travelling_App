import 'package:flutter/material.dart';
import 'package:flutter_travelling_app/Color/colors.dart';
import 'package:flutter_travelling_app/Screens/home_Screen.dart';
import 'Color/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelling UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldColor,
      ),
      home: const HomeScreen(),
    );
  }
}

