import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetplus/utils.dart';

class Predict extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: Container(
        // predictbgB (1:37)
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/images/Predict.png',
            ),
          ),
        ),
      ),
          );
  }
}