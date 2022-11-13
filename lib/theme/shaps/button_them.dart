

import 'package:flutter/material.dart';

ElevatedButtonThemeData  lightElevatedButtonTheme = ElevatedButtonThemeData(

  style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      minimumSize: const Size(double.infinity, 48), // width, height
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)))),
);


ElevatedButtonThemeData  darkElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      minimumSize: const Size(double.infinity, 48), // width, height
      foregroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)))),
);