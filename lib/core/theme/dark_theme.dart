import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.red,
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.red,
  ),
  colorScheme:
      ColorScheme.fromSeed(seedColor: Colors.red, brightness: Brightness.dark),
);
