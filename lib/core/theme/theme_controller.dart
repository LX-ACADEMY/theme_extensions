import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:theme_extensions/core/theme/dark_theme.dart';
import 'package:theme_extensions/core/theme/light_theme.dart';

part 'theme_controller.g.dart';

@Riverpod(keepAlive: true)
class ThemeController extends _$ThemeController {
  @override
  ThemeData build() {
    return lightTheme;
  }

  /// Toggles the theme between light and dark.
  ///
  /// If the current theme is light, it will be changed to dark.
  /// If the current theme is dark, it will be changed to light.
  void toggleTheme() {
    if (state.brightness == Brightness.light) {
      state = darkTheme;
    } else {
      state = lightTheme;
    }
  }
}
