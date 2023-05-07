import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    fontFamily: 'Prompt',
    useMaterial3: true,
    brightness: Brightness.dark,
    colorSchemeSeed: const Color(0xff16202a),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontFamily: 'Prompt',
      )
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 28
      ),
      bodyMedium: TextStyle(
        fontSize: 20
      ),
    ),
  );
}