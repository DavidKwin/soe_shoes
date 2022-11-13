import 'package:flutter/material.dart';
import 'package:soe_shoes/theme/color_theme.dart';
import 'package:soe_shoes/theme/shaps/bottom_naviation_bar.dart';
import 'package:soe_shoes/theme/shaps/input_decoration_theme.dart';
import 'package:soe_shoes/theme/text_theme.dart';

import '../constants/my_font.dart';
import 'shaps/button_them.dart';

 ThemeData lightTheme = ThemeData(
    colorScheme: lightColorScheme,
    fontFamily: themeFont,
    textTheme: lightTextTheme,
    bottomNavigationBarTheme: lightBottomNavigationBar,
    elevatedButtonTheme: lightElevatedButtonTheme,
    inputDecorationTheme: lightInputDecorationTheme);

ThemeData darkTheme = ThemeData(
  colorScheme: darkColorScheme,
  fontFamily: themeFont,
  textTheme: darkTextTheme,
  bottomNavigationBarTheme: darkBottomNavigationBar,
  elevatedButtonTheme: darkElevatedButtonTheme,
  inputDecorationTheme: darkInputDecorationTheme,
);
