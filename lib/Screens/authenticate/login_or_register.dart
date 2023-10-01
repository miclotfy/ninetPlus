import 'signin.dart';
import 'package:flutter/material.dart';

import 'sigup.dart';
class LoginOrRegisterPage extends StatefulWidget {
  final bool Login;
  const LoginOrRegisterPage({super.key,required this.Login});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //initially show login screen
  bool showLoginScreen=false;
  @override

  //Toggel between login and register screen
  void togglePages(){
    setState(() {

      showLoginScreen =! showLoginScreen;
    });
  }
  Widget build(BuildContext context) {
    showLoginScreen= widget.Login;
    if(showLoginScreen){
      showLoginScreen=false;
      return SignIn(
          onTap:togglePages,
      );
    }
    else{
      return SignUp(
        onTap:togglePages,
      );
    }

    return const Placeholder();
  }
}
