import 'package:flutter/material.dart';

class ThemeConfig {
  static var startThemeMode = ThemeMode.system;

  static var lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
    ),
  );
  static var darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.dark
    ),
  );
}