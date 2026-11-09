import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutty_ds/theme/flutty_material_theme.dart';
import 'package:flutty_ds/theme/logic/theme_cubit.dart';

/// Builds the app subtree from the current [FluttyMaterialTheme] and
/// [ThemeMode], typically a [MaterialApp].
typedef AppBuilder = Widget Function(FluttyMaterialTheme theme, ThemeMode mode);

/// Provides a [ThemeCubit] and rebuilds the app subtree when the selected
/// theme or mode changes.
class FluttyThemeWrapper extends StatefulWidget {
  /// Creates a [FluttyThemeWrapper] with the initial [theme], [mode] and
  /// [materialAppBuilder].
  const FluttyThemeWrapper({
    required this.theme,
    required this.mode,
    required this.materialAppBuilder,
    super.key,
  });

  /// Initial theme, before any persisted selection is applied.
  final FluttyMaterialTheme theme;

  /// Initial theme mode, before any persisted selection is applied.
  final ThemeMode mode;

  /// Builder invoked with the current theme and mode.
  final AppBuilder materialAppBuilder;

  @override
  State<FluttyThemeWrapper> createState() => _FluttyThemeWrapperState();
}

class _FluttyThemeWrapperState extends State<FluttyThemeWrapper> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(theme: widget.theme, mode: widget.mode),
      child: _MainApp(materialAppBuilder: widget.materialAppBuilder),
    );
  }
}

class _MainApp extends StatelessWidget {
  const _MainApp({required this.materialAppBuilder});

  final AppBuilder materialAppBuilder;

  @override
  Widget build(BuildContext context) {
    return materialAppBuilder(
      context.watch<ThemeCubit>().state.theme,
      context.watch<ThemeCubit>().state.mode,
    );
  }
}
