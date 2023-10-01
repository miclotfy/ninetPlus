import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetplus/Screens/intro/loading.dart';
import 'package:ninetplus/utils.dart';

class Intro extends StatefulWidget {
  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState(){
    super.initState();
  Timer(Duration(seconds:5),
    ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>Loading())));
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1284;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/ninetpluslogo.png'),

      ],
    );
  }
}