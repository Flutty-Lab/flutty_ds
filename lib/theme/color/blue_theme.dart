import 'package:flutter/material.dart';
import 'package:flutty_ds/theme/custom_snack_bar.dart';
import 'package:flutty_ds/theme/flutty_material_theme.dart';

class BlueTheme extends FluttyMaterialTheme {
  static BlueTheme instance = BlueTheme();

  @override
  String get name => 'Blue';

  @override
  ThemeData light() => ThemeData(
        useMaterial3: true,
        colorScheme: lightScheme(),
        snackBarTheme: customStackBar,
      );

  @override
  ThemeData dark() => ThemeData(
        useMaterial3: true,
        colorScheme: darkScheme(),
        snackBarTheme: customStackBar,
      );

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff475d91),
      surfaceTint: Color(0xff475d91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd9e2ff),
      onPrimaryContainer: Color(0xff001945),
      secondary: Color(0xff575e71),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdce2f9),
      onSecondaryContainer: Color(0xff141b2c),
      tertiary: Color(0xff725572),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfffdd7fa),
      onTertiaryContainer: Color(0xff2a132c),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff1a1b20),
      onSurfaceVariant: Color(0xff44464f),
      outline: Color(0xff757780),
      outlineVariant: Color(0xffc5c6d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3036),
      inversePrimary: Color(0xffb0c6ff),
      primaryFixed: Color(0xffd9e2ff),
      onPrimaryFixed: Color(0xff001945),
      primaryFixedDim: Color(0xffb0c6ff),
      onPrimaryFixedVariant: Color(0xff2e4578),
      secondaryFixed: Color(0xffdce2f9),
      onSecondaryFixed: Color(0xff141b2c),
      secondaryFixedDim: Color(0xffc0c6dc),
      onSecondaryFixedVariant: Color(0xff404659),
      tertiaryFixed: Color(0xfffdd7fa),
      onTertiaryFixed: Color(0xff2a132c),
      tertiaryFixedDim: Color(0xffe0bbde),
      onTertiaryFixedVariant: Color(0xff593d5a),
      surfaceDim: Color(0xffdad9e0),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3fa),
      surfaceContainer: Color(0xffeeedf4),
      surfaceContainerHigh: Color(0xffe8e7ef),
      surfaceContainerHighest: Color(0xffe2e2e9),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb0c6ff),
      surfaceTint: Color(0xffb0c6ff),
      onPrimary: Color(0xff152e60),
      primaryContainer: Color(0xff2e4578),
      onPrimaryContainer: Color(0xffd9e2ff),
      secondary: Color(0xffc0c6dc),
      onSecondary: Color(0xff293042),
      secondaryContainer: Color(0xff404659),
      onSecondaryContainer: Color(0xffdce2f9),
      tertiary: Color(0xffe0bbde),
      onTertiary: Color(0xff412742),
      tertiaryContainer: Color(0xff593d5a),
      onTertiaryContainer: Color(0xfffdd7fa),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff121318),
      onSurface: Color(0xffe2e2e9),
      onSurfaceVariant: Color(0xffc5c6d0),
      outline: Color(0xff8f9099),
      outlineVariant: Color(0xff44464f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e9),
      inversePrimary: Color(0xff475d91),
      primaryFixed: Color(0xffd9e2ff),
      onPrimaryFixed: Color(0xff001945),
      primaryFixedDim: Color(0xffb0c6ff),
      onPrimaryFixedVariant: Color(0xff2e4578),
      secondaryFixed: Color(0xffdce2f9),
      onSecondaryFixed: Color(0xff141b2c),
      secondaryFixedDim: Color(0xffc0c6dc),
      onSecondaryFixedVariant: Color(0xff404659),
      tertiaryFixed: Color(0xfffdd7fa),
      onTertiaryFixed: Color(0xff2a132c),
      tertiaryFixedDim: Color(0xffe0bbde),
      onTertiaryFixedVariant: Color(0xff593d5a),
      surfaceDim: Color(0xff121318),
      surfaceBright: Color(0xff38393f),
      surfaceContainerLowest: Color(0xff0c0e13),
      surfaceContainerLow: Color(0xff1a1b20),
      surfaceContainer: Color(0xff1e1f25),
      surfaceContainerHigh: Color(0xff282a2f),
      surfaceContainerHighest: Color(0xff33353a),
    );
  }
}
