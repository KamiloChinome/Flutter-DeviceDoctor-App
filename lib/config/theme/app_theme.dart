import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    fontFamily: 'Prompt',
    scaffoldBackgroundColor: const Color(0xff16202a),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white
      ),
    ),
  );
}