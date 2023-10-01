import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  bool _emailValid = true;
  void _validateEmail(String value) {
    setState(() {
      _emailValid = EmailValidator.validate(value);
    });
  }
@override
  void dispose() {
    // TODO: implement dispose
    _EmailController.dispose();
    _PasswordController.dispose();
    
    super.dispose();
  }

  Future passwordRest() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _EmailController.text.trim());
      showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: Text('Password rest link sent! Check your emai'),
          );
        }
      );
    }on FirebaseAuthException catch(e){
      showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        }
      );
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
    children:[
          Text('Enter Your Email and We Will Send You a Password Reset Link......',
          textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Center(
    child: Padding(
    padding: const EdgeInsets.symmetric(
            horizontal: 10),
    child: TextField(
    controller: _EmailController,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    hintText: 'Email Address',
    errorText: _emailValid
    ? null
            : 'Please enter a valid email',
    ),
    onChanged: _validateEmail,
    textInputAction: TextInputAction.next,

    ),
    
    ),
    
    ),
    SizedBox(height: 10),
    MaterialButton(
      onPressed: passwordRest,
    child: Text('Rest Password'),
    color: Colors.black,
      textColor: Colors.white,
    ),
    ],
          ),
        ),
      )
    );
  }
}
