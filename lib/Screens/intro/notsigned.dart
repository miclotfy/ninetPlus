  import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ninetplus/Screens/authenticate/login_or_register.dart';
import 'package:ninetplus/Screens/authenticate/signin.dart';
import 'package:ninetplus/utils.dart';

class NotSigned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration (
        color: Colors.black),
      child: Column(

        children: [
          Container(
            height: MediaQuery.of(context).size.height *0.8,
            decoration: BoxDecoration (
              color: Colors.black,
              image: DecorationImage (
                fit: BoxFit.cover,
                image: AssetImage (
                  'assets/images/home.jpg',
                ),
              ),
            ),
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width*0.35,
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(10)),
            color: Colors.white,
          ),
          child: MaterialButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginOrRegisterPage(Login: true,)),
              );
            },
            child: Text('Sign In', style: TextStyle(
                fontSize: 17, color: Colors.black),),
          ),
        ),
        SizedBox(width: width*0.05),
        Container(
          width: width*0.35,
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(10)),
            color: Color(0xff313131),
          ),
          child: MaterialButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginOrRegisterPage(Login: false,)),
              );
            },
            child: Text('Sign Up', style: TextStyle(
                fontSize: 17, color: Colors.white),),
          ),
        ),
      //Expanded(child: RaisedButton(onPressed: () {},child: Text("Clear"),color: Colors.black,textColor: Colors.white,)),
      //Expanded(child: RaisedButton(onPressed: () {},child: Text("Filter"),color: Colors.black,textColor: Colors.white,)),
      ],
      ),
          SizedBox(height:50),
          Container(
            alignment: Alignment.center,
            child: Text('Skip Now >>', style: TextStyle(color: Colors
                .white,
                fontSize: 15,
                fontWeight: FontWeight.w800)),
          ),

        ],
      ),
    );
  }
}