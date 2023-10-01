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
        // playerofthemonthJ2K (1:34)
        padding: EdgeInsets.fromLTRB(36*fem, 96*fem, 30*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/interface-designsai-imported-15-sep-2023-1123pm/images/frame-12-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupljzfPZZ (5PbVfkz7X1q68z5sjtLjzF)
              margin: EdgeInsets.fromLTRB(183*fem, 0*fem, 189*fem, 1724*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // rectangle10ibq (11:116)
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
                    // rectangle11F5y (11:117)
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
                    // rectangle12ynf (11:118)
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
              // rectangle23vxo (11:152)
              margin: EdgeInsets.fromLTRB(292*fem, 0*fem, 314*fem, 268*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 300*fem,
                ),
              ),
            ),
            Container(
              // autogroupzugwTSw (5PbVmkp7x48Eri9ND4ZUgw)
              width: double.infinity,
              height: 216*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouprpvuQd5 (5PbVsFexgLjJ1xXu8yRpVu)
                    padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 92*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // rectangle13jvF (11:130)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 418*fem, 0*fem),
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
                          // rectangle7U79 (11:85)
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
                    // rectangle8pwh (11:86)
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