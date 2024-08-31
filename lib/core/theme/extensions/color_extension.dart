import 'package:flutter/material.dart';

final class AppColorExtension extends ThemeExtension<AppColorExtension> {
  final Color titleColor;
  final Color subtitleColor;

  const AppColorExtension({
    required this.subtitleColor,
    required this.titleColor,
  });

  @override
  ThemeExtension<AppColorExtension> copyWith({
    Color? titleColor,
    Color? subtitleColor,
  }) {
    return AppColorExtension(
      subtitleColor: subtitleColor ?? this.subtitleColor,
      titleColor: titleColor ?? this.titleColor,
    );
  }

  /// a = 100
  /// b = 200
  /// t = 0.5
  ///
  /// actual value = 150

  @override
  ThemeExtension<AppColorExtension> lerp(
      covariant ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }

    return AppColorExtension(
      subtitleColor: Color.lerp(subtitleColor, other.subtitleColor, t)!,
      titleColor: Color.lerp(titleColor, other.titleColor, t)!,
    );
  }
}
