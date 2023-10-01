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
        // coachofthemonth37m (1:32)
        padding: EdgeInsets.fromLTRB(0*fem, 96*fem, 0*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/interface-designsai-imported-15-sep-2023-1123pm/images/frame-10-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupqgqxvxF (5PbUVdGyPeagoGqzaoQGQX)
              margin: EdgeInsets.fromLTRB(219*fem, 0*fem, 219*fem, 428*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // rectangle104oZ (11:110)
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
                    // rectangle11CPy (11:111)
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
                    // rectangle128YX (11:112)
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
              // autogroupjcz5HAX (5PbUbsbZg4itJEjxpcJCZ5)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 784*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // rectangle2016X (11:146)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 880*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 200*fem,
                        height: 1072*fem,
                      ),
                    ),
                  ),
                  TextButton(
                    // rectangle21Xaf (11:148)
                    onPressed: () {},
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 204*fem,
                      height: 1080*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupfkkhrsq (5PbUgnd3R92AJbWiHiFkKh)
              margin: EdgeInsets.fromLTRB(36*fem, 0*fem, 34*fem, 0*fem),
              width: double.infinity,
              height: 216*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup1hqrnmV (5PbUn7oVaWPrH21bNY1HqR)
                    padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 92*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // rectangle13vsh (11:128)
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
                          // rectangle7fKV (11:81)
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
                    // rectangle8CaK (11:82)
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