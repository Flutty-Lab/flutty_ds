import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutty_ds/dimens.dart';
import 'package:flutty_ds/dropdown/simple_dropdown.dart';
import 'package:flutty_ds/theme/flutty_material_theme.dart';
import 'package:flutty_ds/theme/logic/theme_cubit.dart';

class ThemeModeSelector extends StatelessWidget {
  const ThemeModeSelector({
    required this.themes,
    required this.modes,
    required this.lightTitle,
    required this.darkTitle,
    required this.systemTitle,
    super.key,
  });

  final List<FluttyMaterialTheme> themes;
  final List<ThemeMode> modes;
  final String lightTitle;
  final String darkTitle;
  final String systemTitle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, SelectedTheme>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SimpleDropdown(
                    value: state.theme,
                    onChanged: (theme) =>
                        context.read<ThemeCubit>().selectTheme(theme),
                    values: themes,
                    buildName: (value) => value.name,
                  ),
                ),
                SizedBox(width: Dimens.standardSpacing),
                Expanded(
                  child: SimpleDropdown(
                    value: switch (state.mode) {
                      ThemeMode.light when state.theme.light() == null =>
                        ThemeMode.system,
                      ThemeMode.dark when state.theme.dark() == null =>
                        ThemeMode.system,
                      _ => state.mode,
                    },
                    onChanged: (mode) =>
                        context.read<ThemeCubit>().selectMode(mode),
                    values: modes
                        .where(
                          (value) => switch (value) {
                            ThemeMode.light => state.theme.light() != null,
                            ThemeMode.dark => state.theme.dark() != null,
                            ThemeMode.system => true,
                          },
                        )
                        .toList(),
                    buildName: (value) => switch (value) {
                      ThemeMode.light => lightTitle,
                      ThemeMode.dark => darkTitle,
                      ThemeMode.system => systemTitle,
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
