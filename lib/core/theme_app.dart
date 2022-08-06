import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffB7935F);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    textTheme:const TextTheme(
      headline1: TextStyle(
        color: Colors.black,
        fontSize: 5,
        // fontWeight: FontWeight.w700,
      ),
    ),
    appBarTheme:const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
  );
  static final ThemeData darkTheme = ThemeData();
}
