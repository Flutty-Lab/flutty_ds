import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutty_ds/theme/flutty_material_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String themeKey = 'themeKey';
const String themeModeKey = 'themeModeKey';

class ThemeCubit extends Cubit<SelectedTheme> {
  ThemeCubit({required FluttyMaterialTheme theme, required ThemeMode mode})
      : super(SelectedTheme(theme: theme, mode: mode));

  void selectTheme(FluttyMaterialTheme? theme) =>
      updateTheme(theme ?? FluttyMaterialTheme.defaultTheme, state.mode);

  void selectMode(ThemeMode? mode) =>
      updateTheme(state.theme, mode ?? ThemeMode.system);

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

class SelectedTheme extends Equatable {
  const SelectedTheme({required this.theme, required this.mode});

  final FluttyMaterialTheme theme;
  final ThemeMode mode;

  @override
  List<Object> get props => [theme, mode];
}
