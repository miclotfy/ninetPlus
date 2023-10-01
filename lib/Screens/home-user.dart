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
        // homeuservtX (1:29)
        padding: EdgeInsets.fromLTRB(219*fem, 96*fem, 66*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/interface-designsai-imported-15-sep-2023-1123pm/images/frame-7-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupqwkkE8X (5PbRmneJe4k5SvYEAhqwkK)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 153*fem, 2292*fem),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // rectangle10xqD (11:101)
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
                    // rectangle11UYf (11:102)
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
                    // rectangle12zmu (11:103)
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
              // autogroupefwdLKy (5PbRtcnFuhC46n3ysKefwD)
              margin: EdgeInsets.fromLTRB(169*fem, 0*fem, 0*fem, 0*fem),
              width: double.infinity,
              height: 216*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupdoxd4Ws (5PbS17bS3VBJNynRsmDoXd)
                    padding: EdgeInsets.fromLTRB(0*fem, 4*fem, 92*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle6Q4w (11:178)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66*fem, 20*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 188*fem,
                              height: 192*fem,
                            ),
                          ),
                        ),
                        Container(
                          // rectangle7Wdm (11:69)
                          margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 252*fem,
                              height: 208*fem,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    // rectangle8Do5 (11:70)
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