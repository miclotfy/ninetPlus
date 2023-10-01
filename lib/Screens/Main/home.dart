import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetplus/utils.dart';

import 'predict.dart';
import 'trivia.dart';
import 'vote.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int CurrentIndex=0;
  final Screens=[
    Home(),
    Vote(),
    Predict(),
    Trivia(),
  ];
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Container(
        // homeRSf (1:28)
          width: width,
          decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/images/Home.png',
            ),
          ),
        )),


          );
  }
}