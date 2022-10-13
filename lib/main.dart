// import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopapp/screens/home/home_screen.dart';
import 'package:shopapp/constants.dart';

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
      title: 'Flutter Demoo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: "Raleway",
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
