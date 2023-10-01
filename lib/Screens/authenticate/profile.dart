import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../components/my_textfield.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();

}

class _ProfileState extends State<Profile> {

  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  TextEditingController _ConfirmPasswordController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      body: SafeArea(
      child: SingleChildScrollView(
      child: Column(

      children: [
        SizedBox(
          height:30,
          child: Container(
            color: Colors.black,
          ),
        ),
        Container(
          height: 50,
          width: width,
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/9tplusVote.png',width: 70,),
              const SizedBox(width: 20),

              Image.asset('assets/images/9tpluspredict.png',width: 70,),
              const SizedBox(width: 20),

              Image.asset('assets/images/9tplusTrivai.png',width: 70,),
            ],
          ),
        ),
        Container(
          height: 50,
          width: width,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Image.asset('assets/images/9tpluslogoDark.png',width: 100,),
                ),
              ],
            ),
          ),
        ),
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
          enable: false,
          hintcolor: Colors.black,
          hintText: 'Enter Email',
          obscureText: false,
          TextType: TextInputType.emailAddress,
          prefixIcon: Icon(Icons.email),
          suffixIcon: null,
          textAction: TextInputAction.next,
        ),

        const SizedBox(height: 20),


      ],
    ),
      )
      )
    );
  }
}
