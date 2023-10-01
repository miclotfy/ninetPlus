import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetplus/utils.dart';

class Trivia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(

      child: Container(
        // triviaRBM (1:38)
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/images/Trivia.png',
            ),
          ),
        ),
      ),
          );
  }
}