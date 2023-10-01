import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class MyTextField extends StatefulWidget {
  final controller;
  final String hintText;
  final bool  obscureText;
  final TextType;
  final Icon prefixIcon;
  final suffixIcon;
  final textAction;
  final filledColor;
  final hintcolor;
  final enable;


  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.TextType,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.textAction,
    required this.filledColor,
    required this.hintcolor,
    this.enable,

  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _emailValid = true;
  bool _passwordValid = true;
  bool errorflaq= true;
  String errormessage='';
  void _validate(String value) {
    setState(() {
      errorflaq=false;
      if(widget.TextType==TextInputType.visiblePassword){
        _passwordValid = value.length >= 6;
        errormessage='Password must be at least 6 characters';
        errorflaq=_passwordValid;
      }
      else {
        _emailValid = EmailValidator.validate(value);
        errormessage='Please enter a valid email';
        errorflaq=_emailValid;

      }
    });
  }




  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 10),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        keyboardType:  widget.TextType,
        enabled: widget.enable,
        style: TextStyle(color: widget.hintcolor),
        // TextInputType,

        decoration: InputDecoration(

          fillColor: widget.filledColor,
          enabledBorder: OutlineInputBorder(
          borderSide : BorderSide(color: widget.filledColor),
              borderRadius: BorderRadius.all(
                  Radius.circular(15))
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(15))
          ),
          focusedBorder: OutlineInputBorder(
            //borderSide: BorderSide(color: widget.hintcolor),
              borderRadius: BorderRadius.all(
                  Radius.circular(15))
          ),
          prefixIcon: widget.prefixIcon,
          hintStyle: TextStyle(fontSize: 15 ,color: widget.hintcolor),
          prefixIconColor: widget.hintcolor,
          suffixIcon: widget.suffixIcon,
          hintText: widget.hintText,
          filled: true,

           errorText: errorflaq
             ? null
          : errormessage,
        ),
        onChanged: _validate,
        textInputAction: widget.textAction,

      ),
    );
  }
}
