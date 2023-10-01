import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ninetplus/Screens/authenticate/signin.dart';
import 'package:ninetplus/components/my_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../services/auth.dart';
import 'login_or_register.dart';

class SignUp extends StatefulWidget {
  final Function()? onTap;

  const SignUp({super.key,  required this.onTap});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  AuthService _user = AuthService();


  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  TextEditingController _ConfirmPasswordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();


  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),

                Text(
                  'Create New Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  'Please fill  the form to continue',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 70),

                //Email Text Field
                MyTextField(
                  controller: _EmailController,
                  filledColor: Colors.grey[300],
                  hintcolor: Colors.black,
                  hintText: 'Enter Email',
                  obscureText: false,
                  TextType: TextInputType.emailAddress,
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: null,
                  textAction: TextInputAction.next,
                ),

                const SizedBox(height: 20),


                // Password Text Field
                MyTextField(
                  controller: _PasswordController,
                  filledColor: Colors.grey[300],
                  hintcolor: Colors.black,
                  obscureText: isPassword,
                  hintText: 'Enter Password',
                  textAction: TextInputAction.done,

                  prefixIcon: Icon(Icons.key),
                  suffixIcon: IconButton(
                    color: Colors.grey,
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

                const SizedBox(height: 20),

                // Confirm Password Text Field
                MyTextField(
                  controller: _ConfirmPasswordController,
                  obscureText: isPassword,
                  hintText: 'Confirm Password',
                  textAction: TextInputAction.done,
                  filledColor: Colors.grey[300],
                  hintcolor: Colors.black,

                  prefixIcon: Icon(Icons.key),
                  suffixIcon: IconButton(
                    color: Colors.grey,
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

                const SizedBox(height: 100),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: width,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(15)),
                      color: Colors.black,
                    ),
                    child: MaterialButton(
                      //onPressed:(){} //_emailValid && _passwordValid
                      //? _signIn
                      //: null,
                      onPressed: () {
                        _signUp();
                      },
                      child: Text('Sign Up', style: TextStyle(
                          fontSize: 20, color: Colors.white),),
                    ),
                  ),
                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center,
                        children: [

                          Text(
                              "Have an account ?",
                              overflow:
                              TextOverflow
                                  .ellipsis,
                              textAlign:
                              TextAlign
                                  .left,
                              style: TextStyle(
                                color: Colors.black, fontSize: 20,

                              )),

                          TextButton(
                              child: const Text(
                                  "Sign In",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                    decoration: TextDecoration.underline,)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>
                                  const LoginOrRegisterPage(Login: true,)),
                                );
                              }
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
      ),
    );
  }

  Future<void> _signUp() async {
    if (_PasswordController.text.trim() ==
        _ConfirmPasswordController.text.trim()) {
      if (_EmailController.text.isNotEmpty &&
          _PasswordController.text.isNotEmpty) {
        try {
          var _usC = await _user.SignUpbyEmail(
              _EmailController.text, _PasswordController.text, context);
          if (_usC != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>
              const LoginOrRegisterPage(
                Login: true,)),);
          }
        } on FirebaseAuthException catch (e) {
          if (kDebugMode) {

          }
          print(e);
        }
      }
      else {
        Get.defaultDialog(middleText: 'i am a modern snackbar',
          buttonColor: Colors.green,

        );
        Get.defaultDialog(middleText: 'i am a modern snackbar');
        /*  BuildContext con=context;
      final snackBar = SnackBar(content: Text('message'));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Clicked!")));
   */ /*  CupertinoAlertDialog(
      title: Text('Error'),
    content: Text('invalid email or password'),
    );*/
      }
    }
    else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text('Passwords are not matching',),
          );
        },
      );
    }
  }

}
