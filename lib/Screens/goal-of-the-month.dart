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
        // goalofthemonthiRd (1:31)
        padding: EdgeInsets.fromLTRB(44*fem, 96*fem, 0*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/interface-designsai-imported-15-sep-2023-1123pm/images/frame-9-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup24xrnRV (5PbTXetEhH9x5qckDA24XR)
              margin: EdgeInsets.fromLTRB(175*fem, 0*fem, 219*fem, 444*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // rectangle10um1 (11:107)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 274*fem,
                      height: 140*fem,
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // rectangle112qd (11:108)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 274*fem,
                      height: 140*fem,
                    ),
                  ),
                  SizedBox(
                    width: 12*fem,
                  ),
                  TextButton(
                    // rectangle12N8o (11:109)
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
              // autogroupybm9KJw (5PbTfQAL5xNSGEXb4kyBM9)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 584*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // rectangle18TR9 (11:142)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 56*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 172*fem,
                        height: 1088*fem,
                      ),
                    ),
                  ),
                  Container(
                    // autogroups7vhyPV (5PbTmeUvNNWdmCRZJZs7Vh)
                    margin: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
                    width: 1012*fem,
                    height: 1256*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle15tWT (11:136)
                          left: 0*fem,
                          top: 32*fem,
                          child: Align(
                            child: SizedBox(
                              width: 750*fem,
                              height: 1224*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle19Cn3 (11:144)
                          left: 746*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 266*fem,
                              height: 1080*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle24Kbm (11:155)
                          left: 0*fem,
                          top: 68*fem,
                          child: Align(
                            child: SizedBox(
                              width: 700*fem,
                              height: 1172*fem,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom (
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupcdyjdMZ (5PbTveDw1vxMqnWo1LCDYj)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
              width: double.infinity,
              height: 216*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupcwzxMoM (5PbU34CusGKvXaJR6ECwzX)
                    padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 92*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // rectangle13V8s (11:127)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 410*fem, 0*fem),
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
                          // rectangle71N7 (11:79)
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
                    // rectangle8Z8j (11:80)
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