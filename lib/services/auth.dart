import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ninetplus/Screens/authenticate/sigup.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:get/get.dart';

import '../models/user.dart';


  class AuthService {

final FirebaseAuth _auth= FirebaseAuth.instance;


//create user obj based on FirebaseUser
UserModel? _userFromFireBaseUser(User? user){
  if (user != null) {
    return UserModel(uid: user.uid);
  } 
  else return null;
}

//auth change user stream
Stream<UserModel?> get user{
  return _auth.authStateChanges()
  .map(_userFromFireBaseUser);
}


// Sign in with anon
Future  signInAnon() async{
try{
  UserCredential result= await _auth.signInAnonymously();
  User? _user= result.user;
  print(' Signed In');
  return _userFromFireBaseUser(_user);
}catch(e){
  print(e.toString());
  return null;
}
}
// Sign in with Email and Password 

Future SignInwithEmailAndPassword(String email,String Password,BuildContext _context) async
{
  try{
    //print('Email : '+email+' - -- --- -- Password : '+Password);
    UserCredential result= await _auth.signInWithEmailAndPassword(email: email,password: Password);
    User? _user=result.user;
    return _userFromFireBaseUser(_user);
  } on FirebaseAuthException catch (e) {
    if(kDebugMode) {


      showDialog(
        context: _context,
        builder: (BuildContext context) {
            return AlertDialog(
                title: const Text('Error'),
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              color: Colors.black,
            fontSize: 25,
              fontWeight: FontWeight.w700
            ),
            content:  Text(e.message.toString(),),
              contentTextStyle: TextStyle(
              fontSize: 20,
                color: Colors.black
              ),

            );
      },
      );

    }
    return null;
  }

}

// Sign up with Email
    Future SignUpbyEmail(String email,String Password,BuildContext _context) async
    {
      try{
        //print('Email : '+email+' - -- --- -- Password : '+Password);
        UserCredential result= await _auth.createUserWithEmailAndPassword(email: email, password: Password);
        User? _user=result.user;
        return _userFromFireBaseUser(_user);
      } on FirebaseAuthException catch (e) {
        if(kDebugMode) {


          showDialog(
            context: _context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Error'),
                content:  Text(e.message.toString(),),
              );
            },
          );

          print("000000000000000000----hjk----00000000000" + e.code);
          if (e.code == 'user-not-found') {
            print('------------No user found for that email----.');
          } else if (e.code == 'wrong-password') {
            print('Wrong password provided for that user.');
          }else if(e.code == 'network-request-failed'){
            print('Connection problem.');
          }
        }
        print(e);
        return null;
      }

    }
// Sign in with Facebook

// Sign up with email and password

// Sign up with Gmail 
    Future<dynamic>  SignInwithGoogle() async{
  final GoogleSignInAccount? gUser= await GoogleSignIn().signIn();

  final GoogleSignInAuthentication gAuth= await gUser!.authentication;


  final credential = GoogleAuthProvider.credential(
    accessToken: gAuth.accessToken,
    idToken: gAuth.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(credential);
}

// Sign up with Facebook 

// Sign out 
Future Signout() async
{
  try{
  await _auth.signOut();
   //Navigator.pop(context);

  }catch(e){
    print(e);
    return null;
  }
}
    
  }