import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetplus/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1284;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // playerofthemonthyhh (1:30)
        padding: EdgeInsets.fromLTRB(0*fem, 96*fem, 0*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/interface-designsai-imported-15-sep-2023-1123pm/images/frame-8-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupvlr5g6K (5PbSSGYBk4yTZfFxg5vLR5)
              margin: EdgeInsets.fromLTRB(219*fem, 0*fem, 219*fem, 444*fem),
              padding: EdgeInsets.fromLTRB(286*fem, 0*fem, 0*fem, 0*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle11oAw (11:105)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 274*fem,
                        height: 140*fem,
                      ),
                    ),
                  ),
                  TextButton(
                    // rectangle12JtP (11:106)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 274*fem,
                      height: 140*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupx4m5rf1 (5PbSZWq7RzVrBaVqzRX4M5)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 572*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // rectangle16BxB (11:138)
                    margin: EdgeInsets.fromLTRB(0*fem, 36*fem, 144*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 148*fem,
                        height: 1004*fem,
                      ),
                    ),
                  ),
                  Container(
                    // rectangle14iSK (11:134)
                    margin: EdgeInsets.fromLTRB(0*fem, 108*fem, 76*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 680*fem,
                        height: 1168*fem,
                      ),
                    ),
                  ),
                  TextButton(
                    // rectangle17SdD (11:140)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 236*fem,
                      height: 1080*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupzyyqC6b (5PbSgbTeYznscfr5Tfzyyq)
              margin: EdgeInsets.fromLTRB(36*fem, 0*fem, 34*fem, 0*fem),
              width: double.infinity,
              height: 216*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupdjfriqd (5PbSpbEKo3rQaJbQ5udJFR)
                    padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 92*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // rectangle13G6T (11:125)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 414*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 224*fem,
                              height: 180*fem,
                            ),
                          ),
                        ),
                        TextButton(
                          // rectangle7bPd (11:77)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 252*fem,
                            height: 208*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    // rectangle8iz3 (11:78)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 232*fem,
                      height: 216*fem,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}