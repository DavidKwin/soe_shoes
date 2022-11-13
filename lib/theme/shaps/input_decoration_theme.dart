import 'package:flutter/material.dart';

const InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),

  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
    borderSide: BorderSide(color: Colors.black, width: 1.0),
  ),
);



const InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(32),
    ),
    borderSide: BorderSide(color: Colors.white, width: 1.0),
  ),
);