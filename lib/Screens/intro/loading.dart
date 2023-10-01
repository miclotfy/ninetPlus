import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetplus/Screens/authenticate/signin.dart';
import 'package:ninetplus/utils.dart';

import 'Wrapper.dart';

class Loading extends StatefulWidget {

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:5),
            ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context)=>Wrapper())));
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
    SizedBox( width: 70, height: 70,
    child:
        CircularProgressIndicator(
          strokeWidth: 4,
          color: Colors.white,
        //backgroundColor: Colors.grey,
       ),
    ),
      ],
    );
  }
}