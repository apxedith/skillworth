import 'package:flutter/material.dart';
import 'package:skillworth/config/theme/color_theme.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: tertiaryColor,
    secondary: secondaryColor,
    tertiary: primaryColor,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onTertiary: onTertiary,
    onTertiaryContainer: onTertiaryContainer,
    onPrimaryContainer: onPrimaryContainer,
    onSecondaryContainer: onSecondaryContainer,
    primaryContainer: onPrimaryContainer,
  ),
);
