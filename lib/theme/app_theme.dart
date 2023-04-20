import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepOrange;
  static const Color primaryDark = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary)
    )
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryDark,
    appBarTheme: const AppBarTheme(
      color: primaryDark,
      elevation: 0
    ),
    scaffoldBackgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primaryDark)
    )
  );
}