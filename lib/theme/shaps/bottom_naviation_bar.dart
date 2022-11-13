import 'package:flutter/material.dart';

const BottomNavigationBarThemeData lightBottomNavigationBar =
    BottomNavigationBarThemeData(
  unselectedItemColor: Colors.grey,
  selectedItemColor: Colors.black,
  showSelectedLabels: false,
  showUnselectedLabels: false,
  type: BottomNavigationBarType.fixed,
);



const BottomNavigationBarThemeData darkBottomNavigationBar =
BottomNavigationBarThemeData(
  unselectedItemColor: Colors.grey,
  selectedItemColor: Colors.white,
  showSelectedLabels: false,
  showUnselectedLabels: false,
  type: BottomNavigationBarType.fixed,
);