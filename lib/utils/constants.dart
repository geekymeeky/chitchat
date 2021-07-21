import 'package:flutter/material.dart';

// Colors
const Color kAppBarColor = Color(0xFFFFFFFF);
const Color kAppBarIconColor = Colors.black54;
const Color kRegisterButtonColor = Color(0xffE8CC09);
const Color kLoginButtonColor = Color(0xff5143A5);
const Color ChatScreenAppBar = const Color(0xff315659);
const Color ChatScreenBackground = const Color(0xffDFDFDF);
const Color ChatButtonBorder = const Color(0xff9E8A8A);

//Images
const AssetImage kLogo = AssetImage('images/logo.png');

//Styles
const InputDecoration kTextFieldDecor = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      const Radius.circular(12.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      const Radius.circular(20.0),
    ),
    borderSide: BorderSide(color: Colors.deepPurple),
  ),
  hintText: 'Username or Email',
);
