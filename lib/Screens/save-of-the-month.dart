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
        // saveofthemonthQrj (1:33)
        padding: EdgeInsets.fromLTRB(48*fem, 96*fem, 0*fem, 34*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/interface-designsai-imported-15-sep-2023-1123pm/images/frame-11-bg.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroupvfvfJx7 (5PbVA2LfDCCPKbcuAdvFvf)
              margin: EdgeInsets.fromLTRB(171*fem, 0*fem, 219*fem, 404*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // rectangle10qx3 (11:113)
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
                    // rectangle11NBH (11:114)
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
                    // rectangle12JKq (11:115)
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
              // rectangle22Swq (11:150)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 760*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 180*fem,
                  height: 1128*fem,
                ),
              ),
            ),
            Container(
              // autogroupabujaYF (5PbVFwLUMmsrSujZiGabUj)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
              width: double.infinity,
              height: 216*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupy9fmWwh (5PbVLrMx6rB8TGWKBNY9FM)
                    padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 92*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // rectangle133Aw (11:129)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 398*fem, 0*fem),
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
                          // rectangle7mMq (11:83)
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
                    // rectangle87Rh (11:84)
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