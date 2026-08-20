import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    primaryColor: const Color(0XFFFF5722),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0XFFFF5722),
      primary: const Color(0XFFFF5722),
      brightness: Brightness.light,
      surface: Colors.white,
    ),
    cardColor: Colors.white,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color(0XFFFF5722),
      unselectedItemColor: Colors.grey,
    ),
  );

  //
  //Dark Theme
  static final dark = ThemeData(
    primaryColor: const Color(0XFFFF5722),
    scaffoldBackgroundColor: Color(0XFF121212),
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0XFF121212),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0XFFFF5722),
      primary: const Color(0XFFFF5722),
      brightness: Brightness.dark,
      surface: Color(0XFF121212),
    ),
    cardColor: Color(0XFF1e1e1e),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0XFF1e1e1e),
      selectedItemColor: Color(0XFFFF5722),
      unselectedItemColor: Colors.grey,
    ),
  );
}
