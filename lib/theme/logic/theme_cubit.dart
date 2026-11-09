import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutty_ds/theme/flutty_material_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Shared preferences key used to persist the selected theme name.
const String themeKey = 'themeKey';

/// Shared preferences key used to persist the selected [ThemeMode] name.
const String themeModeKey = 'themeModeKey';

/// Cubit managing the current [FluttyMaterialTheme] and [ThemeMode].
///
/// Persists each selection to shared preferences so the choice is restored on
/// the next app launch.
class ThemeCubit extends Cubit<SelectedTheme> {
  /// Creates a [ThemeCubit] initialized with [theme] and [mode].
  ThemeCubit({required FluttyMaterialTheme theme, required ThemeMode mode})
    : super(SelectedTheme(theme: theme, mode: mode));

  /// Selects [theme], falling back to [FluttyMaterialTheme.defaultTheme] when
  /// `null`, and keeps the current [ThemeMode].
  void selectTheme(FluttyMaterialTheme? theme) =>
      updateTheme(theme ?? FluttyMaterialTheme.defaultTheme, state.mode);

  /// Selects [mode], falling back to [ThemeMode.system] when `null`, and keeps
  /// the current theme.
  void selectMode(ThemeMode? mode) =>
      updateTheme(state.theme, mode ?? ThemeMode.system);

  /// Emits the new [SelectedTheme] and persists it in the background.
  Future<void> updateTheme(FluttyMaterialTheme theme, ThemeMode mode) async {
    unawaited(_setThemePreferences(theme, mode));

    emit(SelectedTheme(theme: theme, mode: mode));
  }

  Future<void> _setThemePreferences(
    FluttyMaterialTheme theme,
    ThemeMode mode,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(themeKey, theme.name);
    await prefs.setString(themeModeKey, mode.name);
  }
}

/// Immutable state of [ThemeCubit]: the active theme and mode.
class SelectedTheme extends Equatable {
  /// Creates a [SelectedTheme] with the given [theme] and [mode].
  const SelectedTheme({required this.theme, required this.mode});

  /// The currently selected material theme.
  final FluttyMaterialTheme theme;

  /// The currently selected theme mode (light, dark or system).
  final ThemeMode mode;

  @override
  List<Object> get props => [theme, mode];
}
