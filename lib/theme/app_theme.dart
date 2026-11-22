import 'package:flutter/material.dart';

class AppTheme {
  static const Color verde = Color(0xFF2E7D32);

  static ThemeData get claro => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: verde),
      );

  static ThemeData get oscuro => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: verde,
          brightness: Brightness.dark,
        ),
      );
}