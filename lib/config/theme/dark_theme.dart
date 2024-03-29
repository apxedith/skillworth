import 'package:flutter/material.dart';
import 'package:skillworth/config/theme/color_theme.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      tertiary: tertiaryColor,
      onPrimary: onPrimary,
      onSecondary: onSecondary,
      onTertiary: onTertiary,
      onTertiaryContainer: onTertiaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      primaryContainer: onPrimaryContainer),
);
