import 'package:flutter/material.dart';
import 'package:soe_shoes/screens/main/main_screen.dart';

import 'constants/my_font.dart';
import 'theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: darkTheme,
      theme: lightTheme,
      home: const MainScreen(),
    );
  }
}
