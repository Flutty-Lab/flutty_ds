import 'package:flutter/material.dart';
import 'package:flutty_ds/theme/color/blue_theme.dart';
import 'package:flutty_ds/theme/color/green_theme.dart';

/// Base contract for a Flutty design system theme.
///
/// Implementations provide the light and dark [ThemeData] variants and a
/// unique [name] used for persistence.
abstract class FluttyMaterialTheme {
  /// Unique identifier of the theme, persisted by [ThemeCubit].
  String get name;

  /// The light variant of this theme.
  ThemeData? light();

  /// The dark variant of this theme.
  ThemeData? dark();

  /// Theme used as fallback when no persisted selection is found.
  static FluttyMaterialTheme defaultTheme = BlueTheme.instance;

  /// All themes available for selection in the design system.
  static List<FluttyMaterialTheme> themes = [
    BlueTheme.instance,
    GreenTheme.instance,
  ];
}

/// Parses persisted theme names back into themes and modes.
extension CustomThemeExtension on String? {
  /// Returns the [FluttyMaterialTheme] registered under this name, or
  /// [FluttyMaterialTheme.defaultTheme] when unknown or `null`.
  FluttyMaterialTheme toMaterialTheme() =>
      FluttyMaterialTheme.themes.firstWhere(
        (theme) => theme.name == this,
        orElse: () => FluttyMaterialTheme.defaultTheme,
      );

  /// Returns the [ThemeMode] matching this name, or [ThemeMode.system] when
  /// unknown or `null`.
  ThemeMode toThemeMode() => ThemeMode.values.firstWhere(
    (theme) => theme.name == this,
    orElse: () => ThemeMode.system,
  );
}
