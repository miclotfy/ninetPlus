import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../models/user.dart';
import '../Main/Main.dart';
import '../Main/home.dart';
import '../authenticate/signin.dart';
import '../Main/vote.dart';
import 'notsigned.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);

return Scaffold(
  body: StreamBuilder<User?>(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot) {
      // user is logged in
      if(snapshot.hasData){
        return Main();
      }
      // user is NOT logged in
      else{
        return NotSigned();
      }
    },),
);
   // print('UUUUSER ID :'+user.toString());
    // return either home or authentication screen
    //return Splash();
  }
} 