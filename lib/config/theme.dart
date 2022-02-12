import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Color(0xFFA26FFD),
    accentColor: Color(0xFF828282),
    scaffoldBackgroundColor: Color(0xFF121212),
    fontFamily: 'Manrope',
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      headline2: TextStyle(
        color: Color(0xFFBDBDBD),
        fontSize: 16,
      ),
      headline3: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      headline4: TextStyle(
        color: Color(0xFF828282),
        fontSize: 16,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}
