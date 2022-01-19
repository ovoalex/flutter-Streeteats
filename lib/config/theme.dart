import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Color(0xFF54BB2E),
    scaffoldBackgroundColor: Color(0xFFFFBB00),
    accentColor: Color(0xFFe84545),
    backgroundColor: Color(0xFFFFBB00),
    fontFamily: 'Futura',
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headline2: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headline4: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyText1: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      bodyText2: TextStyle(
        color: Color(0xFF2b2e4a),
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
    ),
  );
}
