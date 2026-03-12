import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutty_ds/theme/flutty_material_theme.dart';
import 'package:flutty_ds/theme/logic/theme_cubit.dart';

typedef AppBuilder = Widget Function(FluttyMaterialTheme theme, ThemeMode mode);

class FluttyThemeWrapper extends StatefulWidget {
  const FluttyThemeWrapper({
    required this.theme,
    required this.mode,
    required this.materialAppBuilder,
    super.key,
  });

  final FluttyMaterialTheme theme;
  final ThemeMode mode;
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
