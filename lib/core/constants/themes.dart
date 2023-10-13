import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    primaryColor: Colors.green,
    appBarTheme: AppBarTheme(color: Colors.green),
    bottomAppBarColor: Colors.cyan,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.cyan,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    bottomAppBarColor: Colors.deepPurple,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
