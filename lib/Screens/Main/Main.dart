import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetplus/utils.dart';

import 'home.dart';
import 'predict.dart';
import 'trivia.dart';
import 'vote.dart';

class Main extends StatefulWidget {
  @override
  State<Main> createState() => _HomeState();
}

class _HomeState extends State<Main> {
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
      body: Screens[CurrentIndex],
      bottomNavigationBar:SizedBox(
        height: 100,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.cyan,

          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.how_to_vote_outlined),
              label: 'Vote',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.batch_prediction,),
              label: 'Predict',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_mark,),
              label: 'Trivia',
            ),
          ],
          currentIndex: CurrentIndex,
          //selectedItemColor: Colors.cyan,
          onTap: (index)=>setState(()=> CurrentIndex=index),
        ),
      ),

    );
  }
}