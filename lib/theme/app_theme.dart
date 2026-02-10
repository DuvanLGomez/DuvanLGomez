import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dark() {
    const primary = Color(0xFF39D3FF);
    const background = Color(0xFF090E2A);

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: primary,
        secondary: Color(0xFF8D5BFF),
        surface: Color(0xFF121B45),
      ),
      scaffoldBackgroundColor: background,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      cardTheme: CardTheme(
        color: const Color(0xFF121B45),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
