// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workoutapp/utils/constant.dart';
import 'package:workoutapp/screens/home/home_screen.dart';
import 'package:workoutapp/utils/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant App Apparently',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: kBackgroundColor,
          primarySwatch: Palette.kToPrimary,
          // appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomeScreen(),
    );
  }
}
