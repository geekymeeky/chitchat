import 'package:flutter/material.dart';

// Colors
const Color kAppBarColor = Color(0xFFFFFFFF);
const Color kAppBarIconColor = Colors.black54;

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
