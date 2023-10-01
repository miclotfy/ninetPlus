import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:get/get.dart';
import 'package:ninetplus/Screens/authenticate/login_or_register.dart';
import 'package:ninetplus/Screens/authenticate/sigup.dart';
import 'package:ninetplus/components/my_textfield.dart';

//import 'package:slide_to_act/slide_to_act.dart';

import '../../services/auth.dart';
import '../Main/home.dart';
import '../Main/vote.dart';
import '../intro/notsigned.dart';
import 'Forget_PW.dart';

class SignIn extends StatefulWidget {
  final Function()? onTap;
  const SignIn({super.key,  required this.onTap});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isPassword = true;
  String _errorMessage = '';
  AuthService _user = AuthService();

  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  bool _emailValid = true;
  bool _passwordValid = true;

  void _validateEmail(String value) {
    setState(() {
      _emailValid = EmailValidator.validate(value);
    });
  }

  void _validatePassword(String value) {
    setState(() {
      _passwordValid = value.length >= 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return SafeArea(
        top: true,
        child:
        SingleChildScrollView(
          child: Material(
            child: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/frame-3-bg.png'),
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.darken,),
                    fit: BoxFit.fitHeight),

              ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: InkWell(
                        child: Container(
                          width: double.maxFinite,
                          height: 1500,
                          child: Center(
                              ),

                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NotSigned()),
                          );                      },
                      ),
                    ),

                    Expanded(
                      flex: 7,
                      child: Container(
                        width: width,
                        //height: 300,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50)
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Welcome Back!', style: TextStyle(color: Colors
                                  .white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800)),
                                  Text('Please Sign into your account', style: TextStyle(color: Colors
                                  .white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800)),

                                //Email Text Field
                                MyTextField(
                                    controller: _EmailController,
                                  filledColor:Color(0xff313131),
                                    hintText: 'Email',
                                    obscureText: false,
                                    TextType: TextInputType.emailAddress,
                                    prefixIcon: Icon(Icons.email),
                                    suffixIcon:null,
                                    textAction:TextInputAction.next,
                                    hintcolor:Colors.white,
                                ),


                                  // Password Text Field
                                MyTextField(
                                  controller: _PasswordController,
                                  filledColor:Color(0xff313131),
                                  obscureText: isPassword,
                                  hintText: 'Password',
                                  hintcolor:Colors.white,
                                  textAction:TextInputAction.done,
                                  prefixIcon: Icon(Icons.key),
                                  suffixIcon:IconButton(
                                    color: Colors.white,
                                    icon: Icon(isPassword
                                           ? Icons.visibility
                                            : Icons.visibility_off),
                                            onPressed: () {
                                              setState(
                                                    () {
                                                  isPassword = !isPassword;
                                                },
                                              );
                                            },
                                          ),
                                  TextType: TextInputType.visiblePassword,


                                        ),

                              //       const SizedBox(height: 7,),

                              Column(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      Navigator.push(context,MaterialPageRoute(builder:(contex){
                                        return ForgotPasswordPage();
                                      },
                                      ),
                                      );
                                    },
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 6, 0, 0),
                                        child: Text('Forget Password?',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                  ),
                                ],
                              ),
                              Container(
                                width: width,
                                height: 60,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: MaterialButton(
                                  onPressed: _emailValid && _passwordValid
                                      ? _signIn
                                      : null,
                                  child: Text('Sign In', style: TextStyle(
                                      fontSize: 20, color: Colors.black),),
                                ),
                              ),

                              Container(
                                width: width,
                                height: 60,
                                decoration: const BoxDecoration(
                                // color: Colors.blue,
                                  //Filter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.darken,),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)),
                                  color: Color(0xFF1D1D1D),
                                ),
                                child: MaterialButton(
                                  onPressed:() async{
    await AuthService().SignInwithGoogle();
    if(mounted)
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Home()));
    },
                                    child: Text('Sign in with Google', style: TextStyle(
                                    fontSize: 20, color: Colors.white),),
                                    ),
                                    ),
                                    //           const SizedBox(height: 10,),


                                    Container(
                                    child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Center(
                                    child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .center,
                                    children: [

                                    Text(
                                    "Don't have an account ?",
                                    overflow:
                                    TextOverflow
                                        .ellipsis,
                                    textAlign:
                                    TextAlign
                                        .left,
                                    style: TextStyle(
                                    color: Colors.white
                                  , fontSize: 15,

                                            )),

                                          TextButton(
                                            child: const Text(
                                              "Sign Up",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.blue,
                                              decoration: TextDecoration.underline,)),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => const LoginOrRegisterPage(Login: false,)),
                                              );
                                            }
                                          ),


                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              //const SizedBox(height: 5,),
                              Container(
                                width: width,
                                child: Center(
                                  child: Text(_errorMessage,
                                    style: TextStyle(color: Colors.red),),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

            ),
          ),
        ))
    ;
  }


  Future<void> _signIn() async {
    if (_EmailController.text.isNotEmpty &&
        _PasswordController.text.isNotEmpty) {
      try {
        var _usC= await _user.SignInwithEmailAndPassword(
            _EmailController.text, _PasswordController.text,context);
        if(_usC!=null)
          {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),);}
      } on FirebaseAuthException catch (e) {
        if(kDebugMode) {
          print("000000000000000000-----gghhhhhgg---00000000000" + e.code);
          if (e.code == 'user-not-found') {
            print('------------No user found for that email----.');
          } else if (e.code == 'wrong-password') {
            print('Wrong password provided for that user.');
          }
        }
        print(e);
      }
    }
    else{
      Get.defaultDialog(middleText: 'i am a modern snackbar',
      buttonColor: Colors.green,

      );
      Get.defaultDialog(middleText: 'i am a modern snackbar');
    /*  BuildContext con=context;
      final snackBar = SnackBar(content: Text('message'));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Clicked!")));
   */   /*  CupertinoAlertDialog(
      title: Text('Error'),
    content: Text('invalid email or password'),
    );*/
    }

  }
}
