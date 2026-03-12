import 'package:flutter/material.dart';
import 'package:flutty_ds/theme/color/blue_theme.dart';
import 'package:flutty_ds/theme/color/green_theme.dart';

abstract class FluttyMaterialTheme {
  String get name;

  ThemeData? light();

  ThemeData? dark();

  static FluttyMaterialTheme defaultTheme = BlueTheme.instance;

  static List<FluttyMaterialTheme> themes = [
    BlueTheme.instance,
    GreenTheme.instance,
  ];
}

extension CustomThemeExtension on String? {
  FluttyMaterialTheme toMaterialTheme() =>
      FluttyMaterialTheme.themes.firstWhere(
        (theme) => theme.name == this,
        orElse: () => FluttyMaterialTheme.defaultTheme,
      );

  ThemeMode toThemeMode() => ThemeMode.values.firstWhere(
        (theme) => theme.name == this,
        orElse: () => ThemeMode.system,
      );
}
